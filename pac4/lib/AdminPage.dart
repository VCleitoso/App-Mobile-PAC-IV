import 'package:flutter/material.dart';
import 'package:frases_aletorias_app/AdminAlterarSenha.dart';
import 'package:frases_aletorias_app/AdminCadastrarFuncionario.dart';
import 'package:frases_aletorias_app/AdminInserirGasto.dart';
import 'package:frases_aletorias_app/AdminVisualizarFuncionario.dart';
import 'main.dart';

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AdminInserirGasto())
                        );
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdminVisualizarFuncionario())
                      );
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdminCadastrarFuncionario())
                      );
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdminAlterarSenha())
                      );
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