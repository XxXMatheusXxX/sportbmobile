import 'package:flutter/material.dart';
import 'package:sportzone/basquete.dart';
import 'package:sportzone/futsal.dart';
import 'package:sportzone/tenis_mesa.dart';
import 'menu.dart';  // Certifique-se que o caminho está correto
import 'principal.dart';
import 'atletismo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportZone',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPage(), // Certifique-se que MenuPage está importado corretamente
        '/cadastro': (context) => Principal(),  // Principal deve funcionar aqui
        '/atletismo': (context) => AtletismoPage(),
        '/tenis_mesa': (context) => Tenis_MesaPage(),
        '/basquete': (context) => BasquetePage(),
        '/futsal': (context) => FutsalPage(),
      },
    );
  }
}
