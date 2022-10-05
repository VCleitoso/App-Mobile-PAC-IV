import 'package:flutter/material.dart';
import 'LoginPage.dart';

const botaoCor = Colors.grey;
const fundoCor = Colors.black;
const textoCor = Colors.white;
const appbarCor = Colors.grey;
const imagemFundo = DecorationImage(colorFilter: ColorFilter.mode(Colors.lightGreen, BlendMode.modulate,),image: AssetImage('logo_branco_sem_preto.png'),fit: BoxFit.contain);

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
