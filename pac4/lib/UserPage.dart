import 'package:flutter/material.dart';
import 'main.dart';

class UserPage extends StatelessWidget{

  UserPage({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [

              //TÍTULO GRANDÃO
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "USUÁRIO",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  )
              ),

              //NOME DO USUÁRIO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: Text(

                  "NOME DO USUÁRIO: Nome do Usuário",
                  style: TextStyle(
                      fontSize: 20,
                  ),
                ),
              ),

              //NÚMERO DO FUNCIONÁRIO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "NÚMERO DO FUNCIONÁRIO: 000000",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              //SALDO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "SALDO: RS 0,00",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              //HISTÓRICO
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [

                    Container(

                      decoration: const BoxDecoration(
                        color: appbarCor,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "HISTÓRICO",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 10),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        //DATA
                        Column(
                          children: [
                            const Text(
                              "Data",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),

                        //RESTAURANTE
                        Column(
                          children: [
                            const Text(
                              "Restaurante",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),

                        //GASTO
                        Column(
                          children: [
                            const Text(
                              "Gasto",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),
                  ],
                )
                ),


            ],
          ),
        ),
      ),
    );
  }

}