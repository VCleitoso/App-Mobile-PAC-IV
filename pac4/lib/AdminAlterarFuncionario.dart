import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:frases_aletorias_app/AdminCadastrarFuncionario.dart';
import 'main.dart';
import 'package:frases_aletorias_app/AdminVisualizarFuncionario.dart';

class AdminAlterarFuncionario extends StatefulWidget {
  const AdminAlterarFuncionario({Key? key}) : super(key: key);

  @override
  State<AdminAlterarFuncionario> createState() =>
      AdminAlterarFuncionarioInstance();
}

class AdminAlterarFuncionarioInstance extends State<AdminAlterarFuncionario> {
  final varNumero = TextEditingController();
  final varNome = TextEditingController();
  final varSenha = TextEditingController();

  //aplicar coisas do banco aqui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "MyMeal",
          style: TextStyle(color: textoCor, fontSize: 20),
        ),
        backgroundColor: appbarCor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: imagemFundo,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(children: [
            //TÍTULO GRANDÃO
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Alterar Funcionário $fillNumber",
                  style: TextStyle(
                    color: textoCor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                )),

            //Inserir nome
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: varNome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: fillNome,
                  hintText: "Digite o nome",
                ),
              ),
            ),

            //Inserir senha
            Container(
              //Alterar para baixar lista de sugestões
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: varSenha,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: fillSenha,
                ),
              ),
            ),

            //Botão de Salvar
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor)),
                child: const Text('Salvar'),
                onPressed: () {
                  fillNome = varNome.text;
                  fillSenha = varSenha.text;
                  Cadastrar(fillNumber, fillNome, fillSenha);
                }, //onPressed
              ),
            ),
            //Botão de Remover
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor)),
                child: const Text('Remover'),
                onPressed: () {
                  remover(fillNumber);
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

void remover(code) {
  if (code != null && code != "") {
    FirebaseFirestore.instance.collection('usuarios').doc(code).delete();
  }
}
