import 'package:helloword/custom/widgets/element_view.dart';
import 'package:flutter/material.dart';
import 'package:helloword/custom/widgets/fundation/horizontal-list-data.dart';

class OurHorizontalListView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final listElements = Container(
        child: ListView (
          scrollDirection: Axis.horizontal,
          children: [
            for (final  item in data)
              ElementView(pathImage: item["pathImage"], title: item["title"], description: item["description"])
          ],
        ),
        height: 170,
    );
    return listElements;
  }
}
