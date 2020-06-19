import 'package:helloword/custom/widgets/element_view.dart';
import 'package:helloword/custom/widgets/fundation/data.dart';
import 'package:flutter/material.dart';

class OurListView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final listElements = Container(
        child: ListView (
          children: [
            for (final  item in jsonData)
              ElementView(pathImage: item["pathImage"], title: item["title"], description: item["description"])
          ],
        )
    );
    return listElements;
  }
}
