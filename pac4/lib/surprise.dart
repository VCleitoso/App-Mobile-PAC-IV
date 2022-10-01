import 'package:flutter/material.dart';

class Surprise extends StatelessWidget{
  const Surprise({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("surpresa.jpg"), fit: BoxFit.fill),
        ),
      ),

    );

  }

}