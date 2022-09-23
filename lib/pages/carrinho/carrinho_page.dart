import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'carrinho_list.dart';
import 'carrinho_total.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BUILD: CarrinhoPage');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Carrinho'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CarrinhoLista(),
              ),
            ),
            const Divider(height: 4, color: Colors.black),
            CarrinhoTotal()
          ],
        ),
      ),
    );
  }
}
