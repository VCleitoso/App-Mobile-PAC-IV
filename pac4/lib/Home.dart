import 'package:flutter/material.dart';
import 'UserPage.dart';
import 'HelpPage.dart';
import 'AdminPage.dart';

class HomeBig extends StatefulWidget{
  const HomeBig({Key? key}) : super(key: key);

  @override
  State<HomeBig> createState() => Home();
}

class Home extends State<HomeBig> {

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("PAC IV"),
          backgroundColor: Colors.grey,
        //actions: [],//Coisas a direita
      ),
      body: Center(
        child:
            Padding(
              padding: EdgeInsets.all(10),
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
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  //ENTRADA USUÁRIO
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: userController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nome de Usuário",
                      ),
                    ),
                  ),


                  //ENTRADA SENHA
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                      ),
                    ),
                  ),

                  //BOTÃO DE ESQUECI A SENHA
                  TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HelpPage())
                        );
                      },
                      child: const Text("Esqueci a senha.")
                  ),

                  //Botão de LOGIN
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        if(userController.text == "admin" && passwordController.text == "admin"){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminPage())
                          );
                        }else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserPage())
                          );
                        }

                      },
                    ),
                  ),

                  Row(
                    children: [
                      const Text("Não possui conta?"),
                      TextButton(
                        child: const Text(
                            "Contate seu administrador",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: (){
                          //Tela de ajuda ao esquecer a senha
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )
                ],
              ),
            ),

      ),
    );
  }
  
}



