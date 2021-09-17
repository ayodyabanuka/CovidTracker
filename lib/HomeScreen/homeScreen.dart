import 'package:covid_tracker/FirstScreen/News/news.dart';
import 'package:covid_tracker/FirstScreen/Symptoms/symptoms.dart';
import 'package:covid_tracker/FirstScreen/TeleHelth/telehealth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

TabController _tabController;

class _homeState extends State<home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
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
    ]));
  }
}
