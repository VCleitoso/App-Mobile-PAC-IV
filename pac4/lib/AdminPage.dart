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
      //teste aqui
        backgroundColor: fundoCor,
        appBar: AppBar(
        centerTitle: false,
        title: const Text("MyMeal", style: TextStyle(color: textoCor,fontSize: 20),),
    backgroundColor: appbarCor,
    //actions: [],//Coisas a direita
    ),
      body: Container(
        decoration: const BoxDecoration(
          image: imagemFundo,
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
                      color: textoCor,
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
                      child: const Text("INSERIR GASTOS", style: TextStyle(color: textoCor,fontSize: 15),)
                  ),
              ),

              //BOTÃO DE VISUALIZAR FUNCIONÁRIOS
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
                    child: const Text("VISUALIZAR FUNCIONÁRIOS", style: TextStyle(color: textoCor,fontSize: 15),)
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
                    child: const Text("CADASTRAR FUNCIONÁRIOS", style: TextStyle(color: textoCor,fontSize: 15),)
                ),
              ),

              //BOTÃO DE ALTERAR LOGIN DE ADMINISTRADOR
              /*Container(
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
                    child: const Text("ALTERAR LOGIN DE ADMINISTRADOR", style: TextStyle(color: textoCor,fontSize: 15),)
                ),
              ),*/



            ],
          ),
        ),
      ),
    );
  }
}