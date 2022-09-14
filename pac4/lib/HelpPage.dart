import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget{

  HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("PAC IV"),
        backgroundColor: Colors.grey,
        //actions: [],//Coisas a direita
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Text("Chama o supervisor lá."),

            ],
          ),
        ),
      ),
    );
  }
}