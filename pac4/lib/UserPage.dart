import 'package:flutter/material.dart';

class UserPage extends StatelessWidget{

  UserPage({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [

              //TÍTULO GRANDÃO
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "MyMeal",
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
                child: const Text(
                  "NOME DO USUÁRIO: Nome do Usuário",
                  style: TextStyle(fontSize: 20),
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
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [

                    const Text(
                      "HISTÓRICO",
                      style: TextStyle(fontSize: 30),
                    ),

                    Row(
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