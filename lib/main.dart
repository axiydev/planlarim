import 'package:flutter/material.dart';
import 'package:planlarim/pages/daily_page.dart';
import 'package:planlarim/pages/detail_page.dart';
import 'package:planlarim/pages/home_page.dart';
import 'package:planlarim/pages/signin_page.dart';
import 'package:planlarim/pages/signup_page.dart';
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
      home:HomeScreen(),
      routes:{
        SplashScreen.id:(context)=>SplashScreen(),
        DailyPage.id:(context)=>DailyPage(),
        HomeScreen.id:(context)=>HomeScreen(),
        DetailPage.id:(context)=>DetailPage(),
        SignIn.id:(context)=>SignIn(),
        SignUp.id:(context)=>SignUp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


