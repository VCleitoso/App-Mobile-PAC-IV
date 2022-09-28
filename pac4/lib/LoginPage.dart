import 'package:flutter/material.dart';
import 'UserPage.dart';
import 'HelpPage.dart';
import 'AdminPage.dart';

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginInstance();
}

class LoginInstance extends State<Login> {

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
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: false,
          title: const Text("MyMeal"),
          backgroundColor: Colors.green[800],
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: Image.asset('logo_branco_sem_preto.png')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('logoMyMealpegeto.png'),
          fit: BoxFit.contain)
        ),
        child:
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [

                  //TÍTULO GRANDÃO
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    )
                  ),

                  //SUBTÍTULO
                  /*Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),*/

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
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green[800])
                      ),
                      child: const Text('Login'),
                      onPressed: () {
                        if(userController.text == "admin" && passwordController.text == "admin"){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AdminPage())
                          );
                        }else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserPage())
                          );
                        }


                      }, //onPressed
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Não possui conta?"),
                      TextButton(
                        child: const Text(
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
                    ],
                  )
                ],
              ),
            ),

      ),
    );
  }
  
}



