import 'package:helloword/custom/widgets/horizontal_list_view.dart';
import 'package:helloword/custom/widgets/our_footer.dart';
import 'package:helloword/custom/widgets/our_appbar.dart';
import 'package:helloword/custom/widgets/our_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'My App', iconAppBar: Icon(Icons.add_alert)),
      body: Column(children: [
        OurHorizontalListView(),
        Expanded(
          child: OurListView(),
        )
        // OurListView()
      ]),
      bottomNavigationBar: OurFooter(
        iconRight: Icon(Icons.account_circle),
        iconLeft: Icon(Icons.home),
      ),
    );
  }
}
