import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'TheFunny.dart';
import 'UserPage.dart';
import 'HelpPage.dart';
import 'AdminPage.dart';
import 'main.dart';

var Nome = "nome";
var Codigo = "codigo";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginInstance();
}

class LoginInstance extends State<Login> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;
  IconData iconPassword = Icons.visibility;

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  var contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoCor,
      body: Container(
        child:
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top:20),
                  child:
                  Text(
                    'MyMeal',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 40),
                child:Image.asset('logo_branco_sem_preto.png', color: textoCor, width:120,height:80, ),
              ),

              Expanded(
                flex: 20,
                child:
                    //ENTRADA USUÁRIO
                    Container(
                        padding: EdgeInsets.only(top: 100, bottom: 300),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  controller: userController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFe7edeb),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hoverColor: Colors.black12,
                                      hintText: "Codigo crachá",
                                      prefixIcon: Icon(
                                        Icons.badge,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),

                              //ENTRADA SENHA
                              TextField(
                                style: TextStyle(color: Colors.black),
                                obscureText: obscureText,
                                controller: passwordController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFe7edeb),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hoverColor: Colors.blueGrey,
                                    hintText: "Senha",
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Colors.grey,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        if (obscureText == true) {
                                          setState(() {
                                            obscureText = false;
                                            iconPassword = Icons.visibility_off;
                                          });
                                        } else {
                                          setState(() {
                                            obscureText = true;
                                            iconPassword = Icons.visibility;
                                          });
                                        }
                                      },
                                      icon: Icon(iconPassword),
                                    )),
                              ),

                              //BOTÃO DE ESQUECI A SENHA
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HelpPage()));
                                  },
                                  child: const Text("Esqueci a senha.")),

                              //height: 50,
                              //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              //child:
                      Container(
                        padding: EdgeInsets.only(top:20),
                        height:60,
                        width: 200,
                        child:
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(botaoCor)
                          ),
                          //child: const Text('Login', style: TextStyle(color: textoCor,fontSize: 15),),
                          child: const Text('Login',
                            style: TextStyle(color: textoCor,fontSize: 18, ),
                          ),
                                onPressed: () {
                                  Entrar(context, userController.text,
                                      passwordController.text);
                                  userController.clear();
                                  passwordController.clear();
                                }, //onPressed
                              ),
                          ),

                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top:30),
                          child:
                          Text(
                            "Não possui conta?",
                            style: TextStyle(fontSize: 15),),
                        ),

                        Container(
                          child: TextButton(
                            child: Text(
                              "Contate seu administrador",
                              style: TextStyle(fontSize: 15),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HelpPage())
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            ],
          ),
        )
      )
    );
  }

  void TheFunny() {
    contador++;
    if (contador >= 8) {
      contador = 0;
      Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const Funny(),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ));

      Timer(const Duration(milliseconds: 500), () {
        Navigator.pop(context);
      });
      print("Sucesso na funçao TheFunny");
    }
    
  }
}

void Entrar(context, code, senha) {
  if (code == "admin" && senha == "admin") {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AdminPage()));
  } else {
    FirebaseFirestore.instance
        .collection('usuarios')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if (doc["Code"] == code && doc["Senha"] == senha) {
          Nome = doc["Nome"];
          Codigo = doc["Code"];
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserPage()));
        }
      });
    });
    print("Sucesso na funçao Entrar");
  }
  
}
