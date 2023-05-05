import 'package:aula_9/aula_09/classes/disciplinas.dart';
import 'package:aula_9/aula_09/widgets/disciplinas_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aula09Disciplinas extends StatelessWidget {
  const Aula09Disciplinas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Disciplinas> disciplinas = Disciplinas.gerarDisciplinas();
    return ListView.builder(
        itemCount: disciplinas.length,
        itemBuilder: (context, index) => DisciplinaCard(
              disciplina: disciplinas[index],
            ));
  }
}
