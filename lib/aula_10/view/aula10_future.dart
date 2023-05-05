import 'package:aula_9/aula_09/classes/disciplinas.dart';
import 'package:aula_9/aula_09/widgets/disciplinas_card.dart';
import 'package:aula_9/aula_10/widgets/carregamento_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula10Future extends StatefulWidget {
  const Aula10Future({super.key});

  @override
  State<Aula10Future> createState() => _Aula10FutureState();
}

class _Aula10FutureState extends State<Aula10Future> {
  Future<String> carregarBoasVindas() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    return "Bem vindo ao Future.";
  }

  Future<List<Disciplinas>> carregarisciplinas() async {
    await Future.delayed(const Duration(seconds: 7));
    return Disciplinas.gerarDisciplinas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 10 Future")),
      body: Center(
        child: FutureBuilder(
          future: carregarisciplinas(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              }
              var disciplinas = snapshot.data as List<Disciplinas>;
              return ListView.builder(
                itemCount: disciplinas.length,
                itemBuilder: (context, index) =>
                    DisciplinaCard(disciplina: disciplinas[index]),
              );
            } else {
              return const CarregandoWidget();
            }
          },
        ),
      ),
    );
  }
}
