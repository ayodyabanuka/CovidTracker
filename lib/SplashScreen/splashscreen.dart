import 'package:covid_tracker/FirstScreen/firstscreen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  splashscreen({Key key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      print(_controller.value);
      //  if the full duration of the animation is 8 secs then 0.5 is 4 secs
      if (_controller.value > 1) {
// When it gets there hold it there.
        _controller.value = 1;
      }
    });
    //set time to load the new page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => firstscreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Lottie.asset('assets/images/splashnew.json',
              //width: 200, controller: _controller, onLoaded: (comp) {
              //_controller
              //  ..duration = comp.duration
              //  ..forward();
              //}
              //),
            ],
          ),
        ),
      ),
    );
  }
}
