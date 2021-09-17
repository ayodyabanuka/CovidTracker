import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class extra extends StatefulWidget {
  extra({Key key}) : super(key: key);

  @override
  _extraState createState() => _extraState();
}

class _extraState extends State<extra> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //1st 2blocks
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                //Confirmed Box
                child: Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x70FC1442),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confirmed",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "489,500",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 25,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  width: 160,
                  height: 120,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //New Cases Box
                child: Expanded(
                    child: Container(
                  width: 160,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x70157FFB),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "New Cases",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "2271",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 25,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ),
            ],
          ),
          //2nd 2blocks
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                //Recovered Box
                child: Expanded(
                    child: Container(
                  width: 160,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x7030A64A),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Recovered",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "428,590",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 25,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //Deaths Box
                child: Expanded(
                    child: Container(
                  width: 160,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x706D757D),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Deaths",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "11,817",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 25,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ),
            ],
          ),
          //3rd 2blocks
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                //New Deaths Box
                child: Expanded(
                    child: Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x70FC1442),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New Deaths",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 15,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "118",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.headline1,
                                fontSize: 25,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
