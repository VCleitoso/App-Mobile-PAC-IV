import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'AdminAlterarFuncionario.dart';
import 'AdminPage.dart';

var fillNumber = '';
var fillNome = '';
var fillSenha = '';
final fireController = TextEditingController();

class AdminVisualizarFuncionario extends StatefulWidget {
  const AdminVisualizarFuncionario({Key? key}) : super(key: key);

  @override
  State<AdminVisualizarFuncionario> createState() =>
      AdminVisualizarFuncionarioInstance();
}

class AdminVisualizarFuncionarioInstance
    extends State<AdminVisualizarFuncionario> {
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
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Visualizar Funcionário",
                  style: TextStyle(
                    color: textoCor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                )),
            //Inserir Número do Funcionário
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: fireController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número do Funcionário",
                  hintText: "Ex: 10808",
                ),
              ),
            ),
            //Botão de Confirmar
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor)),
                child: const Text('Confirmar'),
                onPressed: () {
                  fillNumber = fireController.text;
                  Pesquisa(context, fillNumber);
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

void Pesquisa(context, code) {
  if (code == "admin") {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AdminPage()));
  } else {
    //FirebaseAuth snapshot
    FirebaseFirestore.instance
        .collection('usuarios')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["Code"] == code) {
          print("Sucesso parceiro");
          fillNome = doc["Nome"];
          fillSenha = doc["Senha"];
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AdminAlterarFuncionario()));
        }
        ;
      });
    });
  }
}
