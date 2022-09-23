import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/carrinho.dart';

class CatalogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    print('BUILD: CatalogoAppBar');

    final carrinho = context.watch<CarrinhoModel>();
    return AppBar(
      title: const Text('Catalogo'),
      actions: [
        IconButton(
          icon: Badge(
            badgeContent: Text(
              '${carrinho.items.length}',
              style: TextStyle(color: Colors.white),
            ),
            child: const Icon(
              Icons.shopping_cart,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, '/carrinho'),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
