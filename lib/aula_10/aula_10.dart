import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula10 extends StatefulWidget {
  const Aula10({super.key});

  @override
  State<Aula10> createState() => _Aula10State();
}

class _Aula10State extends State<Aula10> {
  var _carregando = true;

  Future<void> mensagemTardia() async {
    await Future.delayed(const Duration(seconds: 5));
  }

  Future<void> simularCarregamento() async {
    await Future.delayed(const Duration(seconds: 10));
    setState(() {
      _carregando = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    simularCarregamento();
    return Scaffold(
      body: Center(
        child: _carregando
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Carregando...'),
                  SizedBox(height: 16),
                  CircularProgressIndicator(),
                ],
              )
            : const Text('Bem vindo(a) à aula 10!'),
      ),
    );
  }
}
