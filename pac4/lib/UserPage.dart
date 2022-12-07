import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'LoginPage.dart';

Gasto g = Gasto("50,00", "30042000", "Restaurante do seu zé");
List<Gasto> listaGastos = [g];

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getGastos(Codigo);

    return Scaffold(
      backgroundColor: fundoCor,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "MyMeal",
          style: TextStyle(color: textoCor, fontSize: 20),
        ),
        backgroundColor: appbarCor,
        //actions: [],//Coisas a direita
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: imagemFundo,
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              //TÍTULO GRANDÃO
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'USUÁRIO',
                    style: TextStyle(
                      color: textoCor,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  )),

              //NOME DO USUÁRIO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "NOME DO USUÁRIO: $Nome",
                  style: TextStyle(
                    fontSize: 20,
                    color: textoCor,
                  ),
                ),
              ),

              //NÚMERO DO FUNCIONÁRIO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "CÓDIGO DO FUNCIONÁRIO: $Codigo",
                  style: TextStyle(color: textoCor, fontSize: 20),
                ),
              ),

              //SALDO
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "SALDO: RS $Saldo",
                  style: TextStyle(color: textoCor, fontSize: 20),
                ),
              ),

              //HISTÓRICO
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: appbarCor,
                        ),
                        alignment: Alignment.bottomCenter,
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "HISTÓRICO",
                            style: TextStyle(fontSize: 30, color: textoCor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //DATA
                            Column(
                              children: [
                                Text(
                                  listaGastos[0].data,
                                  style:
                                      TextStyle(color: textoCor, fontSize: 15),
                                ),
                              ],
                            ),

                            //RESTAURANTE
                            Column(
                              children: [
                                Text(
                                  listaGastos[0].restaurante,
                                  style:
                                      TextStyle(color: textoCor, fontSize: 15),
                                ),
                              ],
                            ),

                            //CUSTO
                            Column(
                              children: [
                                Text(
                                  listaGastos[0].custo,
                                  style:
                                      TextStyle(color: textoCor, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Gasto {
  Gasto(c, d, r) {
    custo = c;
    data = d;
    restaurante = r;
  }

  late String custo;
  late String data;
  late String restaurante;
}

Future<void> getGastos(code) async {
  FirebaseFirestore.instance
      .collection('usuarios')
      .doc(code)
      .collection('gastos')
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      listaGastos.add(Gasto(doc["Custo"], doc["Data"], doc["Restaurante"]));
    });
  });
}
