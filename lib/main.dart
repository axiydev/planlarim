import 'package:flutter/material.dart';
import 'package:planlarim/pages/daily_page.dart';
import 'package:planlarim/pages/home_page.dart';
import 'package:planlarim/pages/simple_page.dart';
import 'package:planlarim/pages/splash_page.dart';
import 'package:planlarim/theme.dart';
import 'package:planlarim/widgets/chart_widget.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(context),
      home:SimplePage(),
      routes:{
        SplashScreen.id:(context)=>SplashScreen(),
        DailyPage.id:(context)=>DailyPage(),
        HomeScreen.id:(context)=>HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


