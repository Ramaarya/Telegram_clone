import 'package:flutter/material.dart';
// import 'package:learn2/pages/dialog.dart';
import 'package:learn2/pages/dismissable.dart';
// import 'package:learn2/pages/grid.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DismissablePage(),
    );
  }
}
