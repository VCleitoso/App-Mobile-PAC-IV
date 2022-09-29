import 'package:flutter/material.dart';
import 'package:frases_aletorias_app/main.dart';

class HelpPage extends StatelessWidget{

  HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("MyMeal"),
        backgroundColor: appbarCor,
        //actions: [],//Coisas a direita
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('logoMyMeal.png'),
          fit: BoxFit.contain),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [

              //TÍTULO GRANDÃO
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Ajuda",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  )
              ),

              const Text(
                "Chama o supervisor lá.",
                style: TextStyle(
                  fontSize: 50,
              ),),

            ],
          ),
        ),
      ),
    );
  }
}