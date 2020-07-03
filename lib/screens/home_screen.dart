import 'package:flutter/material.dart';
import 'package:wuhanvirus/constants.dart';
import 'package:wuhanvirus/widgets/custom_drawer.dart';
import 'package:wuhanvirus/widgets/homeWidgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "WuhanVirus Tracker",
          style: kAppBarTitle,
        ),
      ),
      drawer: CustomDrawer(),
      body: HomeCategories(),
    );
  }
}
