import 'package:flutter/material.dart';
import 'main.dart';

class AdminInserirGasto extends StatefulWidget{
  const AdminInserirGasto({Key? key}) : super(key: key);

  @override
  State<AdminInserirGasto> createState() => AdminInserirGastoInstance();
}

class AdminInserirGastoInstance extends State<AdminInserirGasto>{

  final userController = TextEditingController();
  final costController = TextEditingController();
  final restaurantController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("MyMeal"),
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

              //Inserir Número do Funcionário
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Número do Funcionário",
                    hintText: "Ex: 10808",
                  ),
                ),
              ),

              //Inserir Gasto
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: costController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Custo",
                    hintText: "0,00",
                  ),
                ),
              ),

              //Inserir Restaurante
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: restaurantController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome de Restaurante",
                    hintText: "Ex: Duas Rodas",
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
                  onPressed: () {}, //onPressed
                ),
              ),

            ], //Children

          ),
        ),

      ),
    );
  }



}