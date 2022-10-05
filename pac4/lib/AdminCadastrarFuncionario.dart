import 'package:flutter/material.dart';
import 'main.dart';

class AdminCadastrarFuncionario extends StatefulWidget{
  const AdminCadastrarFuncionario({Key? key}) : super(key: key);

  @override
  State<AdminCadastrarFuncionario> createState() => AdminCadastrarFuncionarioInstance();
}

class AdminCadastrarFuncionarioInstance extends State<AdminCadastrarFuncionario>{

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
          image: DecorationImage(
              image: AssetImage('logoMyMeal.png'),
              fit: BoxFit.contain),
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

              ] // Children

          ),
        ),

      ),
    );
  }

}