import 'package:helloword/custom/widgets/fundation/colors.dart';
import 'package:helloword/custom/widgets/fundation/ourText.dart';
import 'package:helloword/custom/widgets/our_floating_button.dart';
import 'package:helloword/custom/widgets/our_image.dart';
import 'package:flutter/material.dart';

class ElementView extends StatelessWidget {
  final String pathImage;
  final String title;
  final String description;
  ElementView({Key key, this.pathImage, this.title, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final element = Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
      Container(
        decoration: BoxDecoration(
            color: SCALE_02,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(
                color: SCALE_01, width: 1, style: BorderStyle.solid)),
        margin: EdgeInsets.all(10.0),
        height: 150.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            OurImage(
                pathImage: this.pathImage,
                widthImage: 150.0,
                heightImage: 150.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(children: [
                    H2(text: this.title),
                    NormalText(text: this.description)
                  ]),
                  padding: EdgeInsets.only(top: 10.0, right: 20.0),
                )
              ],
            )
          ],
        ),
      ),
      OurFloatingButton()
    ]);

    return element;
  }
}
