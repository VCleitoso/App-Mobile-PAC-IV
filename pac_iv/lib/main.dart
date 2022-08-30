import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: const Text('Login:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  Text('Insira seu login:',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                  ),
                ], // children
          )
          )
        ], // children
      ),
    );

    Widget loginInsert = Container(
      padding: const EdgeInsets.only(bottom: 32, right: 100, left: 100,),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Insira seu login',
                      ),
                    ),
                  )
                ],
          )
          )
        ],
      ),

    );

    Widget passwordInsert = Container(
      padding: const EdgeInsets.only(bottom: 32, right: 100, left: 100,),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Insira sua senha',
                      ),
                    ),
                  )
                ],
              )
          )
        ],
      ),

    );

    Widget logo = Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child:
                Image.asset(
                  'logo_sem_preto.png',
                  width: 70,
                  height: 70,
                  //fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: const Text('MyMeal'),
              )
            ],

          )
        ],
    ),
    );

    return MaterialApp(
      title: 'PAC IV',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('PAC IV'),
        ),
        body: ListView(
          children: [
            logo,
            titleSection,
            loginInsert,
            passwordInsert,
          ],
        ),
      ),
    );
  }
}


