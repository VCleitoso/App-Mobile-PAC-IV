import 'package:flutter/material.dart';
import 'LoginPage.dart';

const botaoCor = Colors.green;
final fundoCor = Colors.lightGreen[300];
const textoCor = Colors.black;
const appbarCor = Colors.green;


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
