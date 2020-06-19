import 'package:helloword/custom/widgets/fundation/colors.dart';
import 'package:helloword/custom/widgets/fundation/ourText.dart';
import 'package:helloword/custom/widgets/our_image.dart';
import 'package:flutter/material.dart';

class ElementView extends StatelessWidget {
  final String pathImage;
  final String title;
  final String description;
  ElementView({Key key, this.pathImage, this.title, this.description}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final element = Container(
      decoration: BoxDecoration(color: SCALE_02),
      margin: EdgeInsets.all(10.0),
      height: 150.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          OurImage(pathImage: this.pathImage, widthImage: 150.0, heightImage: 150.0),
          Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H2(text: this.title),
              NormalText(text: this.description)
            ],
          )
        ],
      ),
    );
    return element;
  }
}
