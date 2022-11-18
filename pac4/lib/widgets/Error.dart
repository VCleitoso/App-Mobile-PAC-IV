import 'package:flutter/material.dart';

Widget Error(String erro, String descricao) {
  return Expanded(
      child: Container(
    margin: EdgeInsets.all(26.0),
    padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 22.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Column(
      children: [
        Text(
          "Ocorreu um erro de $erro",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          descricao,
          style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ));
}
