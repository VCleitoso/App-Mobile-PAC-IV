import 'package:flutter/material.dart';
import 'main.dart';

class AdminVisualizarFuncionario extends StatefulWidget{
  const AdminVisualizarFuncionario({Key? key}) : super(key: key);

  @override
  State<AdminVisualizarFuncionario> createState() => AdminVisualizarFuncionarioInstance();
}

class AdminVisualizarFuncionarioInstance extends State<AdminVisualizarFuncionario>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("MyMeal"),
        backgroundColor: appbarCor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('logoMyMeal.png'),
              fit: BoxFit.contain),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(

            children: [

            ] // Children

          ),
        ),

      ),
    );
  }

}