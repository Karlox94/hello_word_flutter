import 'package:helloword/custom/widgets/fundation/colors.dart';
import 'package:flutter/material.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;
  final int indexTab;
  final ValueChanged<int> onTapTapped;

  OurFooter({
    Key key,
    this.iconLeft = const Icon(Icons.airline_seat_individual_suite),
    this.iconRight = const Icon(Icons.ac_unit),
    this.indexTab = 0,
    this.onTapTapped
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: BottomNavigationBar(
        backgroundColor: SCALE_05,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: this.iconLeft,
            title: Text('Home'), 
          ),
          BottomNavigationBarItem(
            icon: this.iconRight,
            title: Text('School'),
          ),
        ],
        currentIndex: this.indexTab,
        selectedItemColor: BRAND_PRIMARY,
        unselectedItemColor: BRAND_SECONDARY,
        iconSize: 30.0,
        onTap: this.onTapTapped,
      ),
    );
  }

}