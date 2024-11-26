import 'dart:async';
import 'package:book_shop/commen/color_extenstion.dart';
import 'package:book_shop/view/onbording/onbording_view.dart';
import 'package:flutter/material.dart';
class SpleashScreen extends StatefulWidget {
  @override
  State<SpleashScreen> createState() => _SpleashScreenState();
}
class _SpleashScreenState extends State<SpleashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds : 3),
          ()=> Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => OnbordingView(),
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/auto_stories.png"),
                Text(
                  'Books Hub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'fonts/SF-Pro-Text-Black.otf',
                  ),
                ),
                Text(
                  'Your book with you wherever you go',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'fonts/SF-Pro-Text-Light.otf',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
