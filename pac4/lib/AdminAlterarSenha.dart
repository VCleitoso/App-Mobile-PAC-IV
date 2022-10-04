import 'package:flutter/material.dart';
import 'main.dart';

class AdminAlterarSenha extends StatefulWidget{
  const AdminAlterarSenha({Key? key}) : super(key: key);

  @override
  State<AdminAlterarSenha> createState() => AdminAlterarSenhaInstance();
}

class AdminAlterarSenhaInstance extends State<AdminAlterarSenha>{


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