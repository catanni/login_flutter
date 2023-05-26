import 'package:aula_9/aula_12/model/produto.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class CarrinhoModel extends ChangeNotifier {
  final List<Produto> _lista = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_lista);

  int get numProdutos => _lista.length;

  double get vlTotal {
    //implementar
    return 0;
  }

  void adicionar(Produto p) {
    _lista.add(p);
    notifyListeners();
  }

  void remover(Produto p) {
    _lista.remove(p);
    notifyListeners();
  }

  bool adicionado(Produto p) {
    return _lista.any((produto) => produto.id == p.id);
  }
}
