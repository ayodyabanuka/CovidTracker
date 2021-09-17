import 'package:covid_tracker/FirstScreen/News/news.dart';
import 'package:covid_tracker/FirstScreen/Symptoms/symptoms.dart';
import 'package:covid_tracker/FirstScreen/TeleHelth/telehealth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstscreen extends StatefulWidget {
  firstscreen({Key key}) : super(key: key);

  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff333764)),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "STAY HOME",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "SRI LANKA",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "STAY SAFE",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF16171A)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TabBar(
                    unselectedLabelColor: Color(0xFF747474),
                    labelColor: Color(0xFFFFFFFF),
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                    tabs: [
                      Tab(
                        text: 'News',
                      ),
                      Tab(
                        text: 'TeleHealth',
                      ),
                      Tab(
                        text: 'Pharmacy',
                      )
                    ],
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff333764),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  news(),
                  telehealth(),
                  symptoms(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
