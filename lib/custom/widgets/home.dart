// import 'package:helloword/custom/widgets/fundation/ourText.dart';
import 'package:helloword/custom/widgets/cart.dart';
import 'package:helloword/custom/widgets/index.dart';
import 'package:helloword/custom/widgets/our_footer.dart';
import 'package:helloword/custom/widgets/our_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int indexTab = 0;

  List<Widget> views = [Index(), Cart()];

  onTapTapped(int index) {
    setState(() {
      this.indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'GameShop94', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
        child: this.views[this.indexTab],
      ),
      bottomNavigationBar: OurFooter(
        iconLeft: Icon(Icons.gamepad),
        iconRight: Icon(Icons.shopping_cart),
        indexTab: this.indexTab,
        onTapTapped: this.onTapTapped,
      ),
    );
  }
}
