import 'package:covid/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

class Refresh extends StatefulWidget {

  const Refresh({Key? key}) : super(key: key);

  @override
  _RefreshState createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomePage(),
        title: Text(
          'รายงานสถานการณ์ \n        COVID-19',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        image: Image.asset('assets/images/refresh.png'),
        backgroundColor: const Color(0xFF462749),

        //imageBackground: AssetImage('assets/images/bg.png'),
        styleTextUnderTheLoader: const TextStyle(color: Colors.deepPurple),
        photoSize: 150.0,
        loaderColor: Colors.white70);
  }
}
