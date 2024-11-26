import 'package:book_shop/commen/color_extenstion.dart';
import 'package:book_shop/view/onbording/onbording_view.dart';
import 'package:book_shop/view/spleash/spleash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context , child){
    return MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    fontFamily : 'SF Pro Text' ,
    primaryColor: TColor.primary ,
    ),
    home: SpleashScreen(),
    );
    }
    );


  }
}

