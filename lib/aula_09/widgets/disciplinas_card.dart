import 'package:aula_9/aula_09/classes/disciplinas.dart';
import 'package:flutter/material.dart';

class DisciplinaCard extends StatelessWidget {
  const DisciplinaCard({super.key, required this.disciplina});

  final Disciplinas disciplina;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(disciplina.codigo),
            Text(disciplina.nome),
            Text(disciplina.professor),
          ],
        ),
      ),
    );
  }
}
