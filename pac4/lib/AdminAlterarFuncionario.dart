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
  final varSaldo = TextEditingController();

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
                  "Alterar Funcionários $fillNumber, $fillNome",
                  style: TextStyle(
                    color: textoCor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                )),

            //Inserir nome
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: varNome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nome",
                  hintText: fillNome,
                ),
              ),
            ),

            //Inserir senha
            Container(
              //Alterar para baixar lista de sugestões
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: varSenha,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                  hintText: fillSenha,
                ),
              ),
            ),
            //Inserir saldo
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: varSaldo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Saldo",
                  hintText: fillSaldo,
                ),
              ),
            ),

            //Botão de Salvar
            Container(
              padding: EdgeInsets.only(top:15),
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor)),
                child: Text('Salvar'),
                onPressed: () {
                  showDialog(context: context,
                    builder: (context) => AlertDialog(
                      title: Text('TESTE'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ),
                  );
                  if (varNome.text == '' &&
                      varSenha.text != '' &&
                      varSaldo.text != '') {
                    //Nome nulo, resto normal
                    fillSenha = varSenha.text;
                    fillSaldo = varSaldo.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text == '' &&
                      varSenha.text == '' &&
                      varSaldo.text == '') {
                    //Tudo nulo, nada altera
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text == '' &&
                      varSenha.text != '' &&
                      varSaldo.text == '') {
                    //Nome e saldo nulo, alterar senha
                    fillSenha = varSenha.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text == '' &&
                      varSenha.text != '' &&
                      varSaldo.text != '') {
                    //Nome nulo, alterar senha e saldo
                    fillSaldo = varSaldo.text;
                    fillSenha = varSenha.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text != '' &&
                      varSenha.text != '' &&
                      varSaldo.text != '') {
                    //Nada nulo, altera tudo.
                    fillNome = varNome.text;
                    fillSenha = varSenha.text;
                    fillSaldo = varSaldo.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text == '' &&
                      varSenha.text == '' &&
                      varSaldo.text != '') {
                    //Nome e senha nulo, saldo Normal
                    fillNome = fillNome;
                    fillSenha = fillSenha;
                    fillSaldo = varSaldo.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text != '' &&
                      varSenha.text == '' &&
                      varSaldo.text == '') {
                    //Altera nome
                    fillNome = varNome.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  } else if (varNome.text != '' &&
                      varSenha.text != '' &&
                      varSaldo.text == '') {
                    //Altera nome e senha
                    fillNome = varNome.text;
                    fillSenha = varSenha.text;
                    Cadastrar(fillNumber, fillNome, fillSenha, fillSaldo);
                  }
                }, //onPressed
              ),
            ),
            //Botão de Remover
            Container(
              padding: EdgeInsets.only(top:25),
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(botaoCor)),
                child: Text('Remover'),
                onPressed: () {
                  showDialog(context: context,
                      builder: (context) => AlertDialog(
                        title: Text('TESTE'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          )
                        ],
                      ),
                  );
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
    print("Sucesso na funçao Remover");
  }
}
