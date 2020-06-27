// import 'package:helloword/custom/widgets/fundation/ourText.dart';
import 'package:helloword/custom/widgets/horizontal_list_view.dart';
import 'package:helloword/custom/widgets/our_footer.dart';
import 'package:helloword/custom/widgets/our_appbar.dart';
import 'package:helloword/custom/widgets/our_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'GameShop94', iconAppBar: Icon(Icons.add_alert)),
      body: Column(children: [
        Container(
            child: Text("Nuevos juegos",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify),
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0)),
        OurHorizontalListView(),
        Container(
            child: Text("Más jugados",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify),
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0)),
        Expanded(
          child: OurListView(),
        )
        // OurListView()
      ]),
      bottomNavigationBar: OurFooter(
        iconLeft: Icon(Icons.gamepad),
        iconRight: Icon(Icons.shopping_cart),
      ),
    );
  }
}
