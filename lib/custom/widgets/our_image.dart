import 'package:flutter/material.dart';
class OurImage extends StatelessWidget{

  final String pathImage;
  final double widthImage;
  final double heightImage;
  OurImage({Key key, this.pathImage,this.widthImage, this.heightImage}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final photo = Container (
      margin: EdgeInsets.only(
        right:20.0,
      ),
      width: this.widthImage,
      height: this.heightImage,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(this.pathImage)
          )
      ),
    ) ;

    return photo;
  }

}