import 'package:flutter/material.dart';
import 'LoginPage.dart';

final botaoCor = Colors.green[800];
final fundoCor = Colors.lightGreen[300];
const textoCor = Colors.white;
final appbarCor = Colors.green[800];


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Trabalho PAC IV",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: Login(),
  ));
}
