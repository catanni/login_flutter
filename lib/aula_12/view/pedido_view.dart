import 'package:aula_9/aula_12/model/carrinho_model.dart';
import 'package:aula_9/aula_13/widgets/card_carrinho.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: carrinho.numProdutos,
              itemBuilder: (context, index) {
                var produto = carrinho.produtos[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  child: CardCarrinho(
                    nome: carrinho.produtos[index].nome,
                    price: carrinho.produtos[index].preco,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Total'),
                const SizedBox(
                  width: 8,
                ),
                Text('R\$ ${carrinho.vlTotal}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
