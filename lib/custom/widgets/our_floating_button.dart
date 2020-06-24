import 'package:flutter/material.dart';
import 'package:helloword/custom/widgets/fundation/colors.dart';

class OurFloatingButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OurFloatingButton();
  }
}

class _OurFloatingButton extends State<OurFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: STATUS_INFO,
      mini: true,
      tooltip: "Añadir al carrito",
      onPressed: () {
        print('Agregar a la tienda');
      },
      child: Icon(Icons.shopping_cart),
    );
  }
}
