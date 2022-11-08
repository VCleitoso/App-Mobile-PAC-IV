import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

//fugisso
const botaoCor = Colors.black38;
const fundoCor = Colors.grey;
const textoCor = Colors.white;
const appbarCor = Colors.black38;
const imagemFundo = DecorationImage(
    colorFilter: ColorFilter.mode(
      Colors.black12,
      BlendMode.modulate,
    ),
    image: AssetImage('logo_branco_sem_preto.png'),
    fit: BoxFit.contain);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCPSXINp11yqQo-pSo5ilj08dC6_5-6k94",
          authDomain: "mymeal-2abdd.firebaseapp.com",
          projectId: "mymeal-2abdd",
          storageBucket: "mymeal-2abdd.appspot.com",
          messagingSenderId: "158737233678",
          appId: "1:158737233678:web:8fafbbb04a7e646eb2895f"));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Trabalho PAC IV",
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: Login(),
  ));
}
