import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:covid_tracker/models/covid_model.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class news extends StatefulWidget {
  news({Key key}) : super(key: key);

  @override
  _newsState createState() => _newsState();
}

Future<CovidInfo> getCovidDetails() async {
  final responseData = await http.get(
      Uri.parse('https://www.hpb.health.gov.lk/api/get-current-statistical'));

  if (responseData.statusCode == 200) {
    return CovidInfo.fromJson(jsonDecode(responseData.body)['data']);
  } else {
    throw Exception('Failed to load the data');
  }
}

class _newsState extends State<news> {
  Future<CovidInfo> covidInfo;

  @override
  void initState() {
    super.initState();
    covidInfo = getCovidDetails();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FutureBuilder<CovidInfo>(
            future: covidInfo,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                DateTime updatedAt = DateTime.parse(snapshot.data.lastUpdated);
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CovidCounter(
                          color: Color(0x70FC1442),
                          counter: snapshot.data.localtotalcases,
                          title: 'Confirmed',
                        ),
                        CovidCounter(
                          color: Color(0x70157FFB),
                          counter: snapshot.data.localnewCases,
                          title: 'New Cases',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CovidCounter(
                          color: Color(0x7030A64A),
                          counter: snapshot.data.localRecovered,
                          title: 'Recovered',
                        ),
                        CovidCounter(
                          color: Color(0x706D757D),
                          counter: snapshot.data.localDeaths,
                          title: 'Deaths',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CovidCounter(
                          color: Color(0x70D01EE0),
                          counter: snapshot.data.underinvestigation,
                          title: 'Under Investigation',
                        ),
                        CovidCounter(
                          color: Color(0x70C4A82E),
                          counter: snapshot.data.activecases,
                          title: 'Active Cases',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Newest update ${DateFormat.yMMMMd('en_US').format(updatedAt)}',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return CircularProgressIndicator();
            },
          )),
    );
  }
}

class CovidCounter extends StatelessWidget {
  final int counter;
  final Color color;
  final String title;

  const CovidCounter({
    this.color,
    this.counter,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 140,
              height: 17,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 13,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 140,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$counter',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 35,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
