import 'package:aula_9/aula_12/model/produto.dart';
import 'package:flutter/material.dart';

import 'package:badges/badges.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Produto> produtos = Produto.gerarLista();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: const Badge(
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(produtos[index].nome),
            subtitle: Text('R\$ ${produtos[index].preco.toStringAsFixed(2)}'),
            trailing: Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
