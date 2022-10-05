import 'package:flutter/material.dart';
import 'LoginPage.dart';

const botaoCor = Colors.redAccent;
final fundoCor = Colors.black;
const textoCor = Colors.white;
const appbarCor = Colors.red;
const imagemFundo = DecorationImage(colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate,),image: AssetImage('logoMyMeal.png'),fit: BoxFit.contain);

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
