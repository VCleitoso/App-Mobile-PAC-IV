import 'package:flutter/material.dart';
import 'LoginPage.dart';

const botaoCor = Colors.black38;
const fundoCor = Colors.grey;
const textoCor = Colors.white;
const appbarCor = Colors.black38;
const imagemFundo = DecorationImage(colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),image: AssetImage('logo_branco_sem_preto.png'),fit: BoxFit.contain);

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
