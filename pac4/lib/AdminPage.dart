import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget{

  AdminPage({Key? key}) : super(key: key);

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