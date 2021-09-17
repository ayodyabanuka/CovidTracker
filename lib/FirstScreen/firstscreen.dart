import 'package:covid_tracker/FAQ%20Screen/faqScreen.dart';
import 'package:covid_tracker/FirstScreen/News/news.dart';
import 'package:covid_tracker/FirstScreen/Symptoms/symptoms.dart';
import 'package:covid_tracker/FirstScreen/TeleHelth/telehealth.dart';
import 'package:covid_tracker/HomeScreen/homeScreen.dart';
import 'package:covid_tracker/QR%20Screen/qrScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstscreen extends StatefulWidget {
  firstscreen({Key key}) : super(key: key);

  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen>
    with TickerProviderStateMixin {
  int _currentIndex = 0;

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
            Expanded(child: buildPages())
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff333764),
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xFFFFFFFF),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Color(0xFF747474),
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code_scanner,
                ),
                label: "QR Scanner"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: "FAQ"),
          ]),
    );
  }

  Widget buildPages() {
    switch (_currentIndex) {
      case 1:
        return qrScreen();
      case 2:
        return faqScreen();

      case 0:
      default:
        return home();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
