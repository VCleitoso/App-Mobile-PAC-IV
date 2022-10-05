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
  final dropValue = ValueNotifier('');
  final dropOpcoes = ['Restaurante bar do zé','Marmita do pele','Aqui é top marmitex','Marmitaria da vovô'];

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
                    "Inserir Gasto",
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

              /*//Inserir Restaurante
              Container(
                //Alterar para baixar lista de sugestões
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: restaurantController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome de Restaurante",
                    hintText: "Ex: Duas Rodas",
                  ),
                ),
              ),*/

              //Campo multi seleção restaurante
              Container(
                padding: const EdgeInsets.all(10),
                  child: ValueListenableBuilder(
                   valueListenable:dropValue,
                      builder: (BuildContext context,String value,_) {
                      return SizedBox(
                        width: 280,
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          icon:  const Icon(Icons.restaurant),
                          hint: const Text('Escolha o restaurante'),
                          decoration:InputDecoration(
                            //label: const Text('Restaurante'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            )
                          ),
                          value: (value.isEmpty) ? null : value,
                          onChanged: (escolha) => dropValue.value = escolha.toString(),
                          items: dropOpcoes
                              .map((op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                          ))
                              .toList(),
                        ),
                      );
                     }),
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
                    adicionarGasto();
                  }, //onPressed
                ),
              ),

            ], //Children

          ),
        ),

      ),
    );
  }

  adicionarGasto(){

    //A fazer: Guardar dados no banco de dados

    //A fazer: Pop Up para informar usuário do sucesso ou falha do salvamento.


    userController.clear();
    costController.clear();
    restaurantController.clear();
  }

}