import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import '';

class AdminCadastrarFuncionario extends StatefulWidget{
  const AdminCadastrarFuncionario({Key? key}) : super(key: key);


  @override
  State<AdminCadastrarFuncionario> createState() => AdminCadastrarFuncionarioInstance();
}

class AdminCadastrarFuncionarioInstance extends State<AdminCadastrarFuncionario>{
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  final codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("MyMeal", style: TextStyle(color: textoCor,fontSize: 20),),
        backgroundColor: appbarCor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: imagemFundo,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(

              children: [

                //TÍTULO GRANDÃO
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Cadastrar Funcionário",
                      style: TextStyle(
                        color: textoCor,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    )
                ),
                //Inserir Número do Funcionário
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: codeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Número do novo Funcionário",
                      hintText: "Ex: 10808",
                    ),
                  ),
                ),

                //Inserir nome
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: userController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nome do novo funcionario",
                      hintText: "Digite o nome",
                    ),
                  ),
                ),

                //Inserir senha
                Container(
                  //Alterar para baixar lista de sugestões
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                      ),
                  ),
                ),

                //Botão de Salvar
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(botaoCor)
                    ),
                    child: const Text('Salvar'),
                    onPressed: () {
                      Cadastrar(codeController.text, userController.text, passwordController.text);
                      codeController.clear();
                      userController.clear();
                      passwordController.clear();
                    }, //onPressed
                  ),
                ),

              ] // Children

          ),
        ),

      ),
    );
  }

}

void Cadastrar(code, nome, senha){
  if(code != null && code != "") {
    FirebaseFirestore.instance.collection('usuarios').doc(code).set(
        {'Nome': nome, 'Senha': senha});
  }
}
