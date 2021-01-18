import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
ThemeData basicTheme(BuildContext context)=>ThemeData(
  textTheme: TextTheme(),
  primaryColor:Color.fromRGBO(253, 243, 233,1),
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);