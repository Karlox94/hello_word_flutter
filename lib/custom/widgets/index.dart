import 'package:flutter/material.dart';
import 'package:helloword/custom/widgets/horizontal_list_view.dart';
import 'package:helloword/custom/widgets/our_list_view.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}
