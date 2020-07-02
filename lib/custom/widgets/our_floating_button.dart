import 'package:flutter/material.dart';
import 'package:helloword/custom/widgets/fundation/colors.dart';

class OurFloatingButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OurFloatingButton();
  }
}

class _OurFloatingButton extends State<OurFloatingButton> {
  bool inShoppingCart = false;

  // ignore: non_constant_identifier_names
  AddRemoveOfShoopingCart() {
    setState(() {
      this.inShoppingCart = !this.inShoppingCart;
      String state = this.inShoppingCart ? 'Agregado a' : 'Eliminado de';
      print(state + ' la tienda');
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: !this.inShoppingCart ? STATUS_INFO : STATUS_SUCCESS,
      mini: true,
      tooltip: "Añadir al carrito",
      onPressed: this.AddRemoveOfShoopingCart,
      child: !this.inShoppingCart ? Icon(Icons.shopping_cart) : Icon(Icons.check),
    );
  }
}
