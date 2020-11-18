import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loginui/loginscreen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 4500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Loginscreen(),
          ));
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white70],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Text(
                'Soar Throw',
                style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 260, child: Image(image: AssetImage('images/soar.png'))),
              SizedBox(
                height: 15,
              ),
              Text(
                'Igniting your startups',
                style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 18),
              ),
              Text(
                'to soar high!',
                style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 18),
              ),
              SizedBox(
                height: 120,
              ),
              LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 240.0,
                lineHeight: 4.0,
                animation: true,
                percent: 1.0,
                animationDuration: 2250,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
