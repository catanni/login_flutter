class Disciplinas {
  late final String codigo;
  late final String nome;
  late final String professor;

  Disciplinas({
    required this.codigo,
    required this.nome,
    required this.professor,
  });

  static List<Disciplinas> gerarDisciplinas() {
    return [
      Disciplinas(
        codigo: 'PMDE',
        nome: 'Programação para dispositivos móveis',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'BD',
        nome: 'Banco de Dados',
        professor: 'Polido',
      ),
      Disciplinas(
        codigo: 'ED1',
        nome: 'Estrutura de Dados 1',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'ED2',
        nome: 'Estrutura de Dados 2',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'PMDE',
        nome: 'Programação para dispositivos móveis',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'PMDE',
        nome: 'Programação para dispositivos móveis',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'PMDE',
        nome: 'Programação para dispositivos móveis',
        professor: 'Dourado',
      ),
      Disciplinas(
        codigo: 'PMDE',
        nome: 'Programação para dispositivos móveis',
        professor: 'Dourado',
      ),
    ];
  }
}
