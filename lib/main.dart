import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_parcial_4/pantallas/Principal.dart';
import 'package:flutter_parcial_4/pantallas/add_clientes.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const firebasemain());
}

class firebasemain extends StatelessWidget {
  const firebasemain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial diferido 4',
      initialRoute: '/',
      routes: {
        
        '/add':(context)=> const addcliente(),
        '/':(context)=> const Parcialdiferido(),
      },
    );
  }
}

