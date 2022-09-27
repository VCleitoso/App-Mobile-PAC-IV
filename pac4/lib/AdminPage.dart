import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget{

  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        centerTitle: false,
        title: const Text("PAC IV"),
    backgroundColor: Colors.grey,
    //actions: [],//Coisas a direita
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
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

              //SUBTÍTULO
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Admin",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              //BOTÃO DE INSERIR GASTO
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: (){
                        //Inserir ajuda ao esquecer a senha
                      },
                      child: const Text("INSERIR GASTO")
                  ),
              ),

              //BOTÃO DE VISUALIZAR FUNCIONÁRIO
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: (){
                      //Inserir tela de visualizar, alterar e deletar funcionário
                    },
                    child: const Text("VISUALIZAR FUNCIONÁRIO")
                ),
              ),

              //BOTÃO DE CADASTRAR NOVO FUNCIONÁRIO
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: (){
                      //Inserir tela de cadastrar funcionário
                    },
                    child: const Text("CADASTRAR FUNCIONÁRIO")
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}