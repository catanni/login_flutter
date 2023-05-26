class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });

  static List<Produto> gerarLista() {
    return [
      Produto(id: 1, nome: 'Produto 1', preco: 15.50),
      Produto(id: 1, nome: 'Produto 2', preco: 20.50),
      Produto(id: 1, nome: 'Produto 3', preco: 1.00),
      Produto(id: 1, nome: 'Produto 4', preco: 1.50),
      Produto(id: 1, nome: 'Produto 5', preco: 25.00),
      Produto(id: 1, nome: 'Produto 6', preco: 35.50),
      Produto(id: 1, nome: 'Produto 7', preco: 17.00),
      Produto(id: 1, nome: 'Produto 8', preco: 50.50),
      Produto(id: 1, nome: 'Produto 9', preco: 4.00),
      Produto(id: 1, nome: 'Produto 10', preco: 15.00),
      Produto(id: 1, nome: 'Produto 11', preco: 5.00),
      Produto(id: 1, nome: 'Produto 12', preco: 3.00),
      Produto(id: 1, nome: 'Produto 13', preco: 1.00)
    ];
  }
}
