import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Container> myList = List.generate(90, (index) {
    return Container(
      height: 50,
      width: 50,
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        elevation: 0,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: myList,
      ),
    );
  }
}
