import 'package:flutter/material.dart';
import 'Home.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Trabalho PAC IV",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: HomeBig(),
  ));
}
