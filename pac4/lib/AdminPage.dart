import 'package:flutter/material.dart';
import 'package:frases_aletorias_app/main.dart';

class AdminPage extends StatelessWidget{

  const AdminPage({Key? key}) : super(key: key);

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
                    "Admin",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  )
              ),

              //BOTÃO DE INSERIR GASTO
              Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(botaoCor),
                      ),
                      onPressed: (){
                        //Inserir ajuda ao esquecer a senha
                      },
                      child: const Text("INSERIR GASTO")
                  ),
              ),

              //BOTÃO DE VISUALIZAR FUNCIONÁRIO
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor),
                  ),
                    onPressed: (){
                      //Inserir tela de visualizar, alterar e deletar funcionário
                    },
                    child: const Text("VISUALIZAR FUNCIONÁRIO")
                ),
              ),

              //BOTÃO DE CADASTRAR NOVO FUNCIONÁRIO
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(botaoCor),
                    ),
                    onPressed: (){
                      //Inserir tela de cadastrar funcionário
                    },
                    child: const Text("CADASTRAR FUNCIONÁRIO")
                ),
              ),

              //BOTÃO DE ALTERAR LOGIN DE ADMINISTRADOR
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(botaoCor),
                    ),
                    onPressed: (){
                      //Inserir tela de alterar login de admin
                    },
                    child: const Text("ALTERAR LOGIN DE ADMINISTRADOR")
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}