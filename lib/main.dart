import 'package:aula_9/aula_08/aula08.dart';
import 'package:aula_9/aula_09/view/aula09_dashboard.dart';
import 'package:aula_9/aula_09/view/aula09_disciplinas.dart';
import 'package:aula_9/aula_10/aula_10.dart';
import 'package:aula_9/aula_10/view/aula10_future.dart';
import 'package:aula_9/aula_12/view/cardapio_view.dart';
import 'package:flutter/material.dart';
import 'package:aula_9/aula_09/aula09.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/cardapio_view',
      routes: {
        '/': (context) => const Aula08(),
        '/aula09': (context) => const Aula09(),
        '/aula09_dashboard': (context) => const Aula09Dashboard(),
        '/aula09_disciplinas': (context) => const Aula09Disciplinas(),
        '/aula_10': (context) => const Aula10(),
        '/aula10_future': (context) => const Aula10Future(),
        '/cardapio_view': (context) => const CardapioView(),
      },
    );
  }
}
