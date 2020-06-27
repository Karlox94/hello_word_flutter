import 'package:helloword/custom/widgets/fundation/colors.dart';
import 'package:flutter/material.dart';

import 'fundation/ourText.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBar;

  OurAppBar({
    Key key,
    this.title = 'Default',
    this.iconAppBar = const Icon(Icons.airport_shuttle),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          children: <Widget>[
            Icon(Icons.videogame_asset, size: 48.0,),
            Container(
              child: H1(text: this.title),
              margin: EdgeInsets.only(left: 15.0),
            )
          ],
        )
        // child: H1(text: this.title),
        // child: Icon(Icons.videogame_asset, size: 48.0,)
      ),
      backgroundColor: STATUS_INFO,
      // actions: <Widget>[
      //   IconButton(
      //     icon: this.iconAppBar,
      //     tooltip: 'Messages',
      //     onPressed: () {
      //       print('Presionaste el boton de alertas');
      //     },
      //   ),
      //   IconButton(
      //     icon: const Icon(Icons.navigate_next),
      //     tooltip: 'Messages',
      //     onPressed: () {
      //       print('Presionaste el boton de siguiente');
      //     },
      //   )
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
