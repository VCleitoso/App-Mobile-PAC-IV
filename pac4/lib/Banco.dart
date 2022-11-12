


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget{
  final String documentId;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('usuarios');

   return FutureBuilder<DocumentSnapshot>(
     future: users.doc(documentId).get(),
     builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot){
       if (snapshot.hasError){
         return Text("Mamãe tem erro");
       }

       if (snapshot.hasData && !snapshot.data!.exists){
         return Text("Documento não existe");
       }

       if (snapshot.connectionState == ConnectionState.done){
         Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
         return Text("Nome: ${data['nome']} Senha: ${data['senha']}")
       }

       return Text("Carregando");
     },
   );
  }
}