import 'package:auto_scroll/Screens/Widgets/1AppBar.dart';
import 'package:auto_scroll/Screens/Widgets/2ListView.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListViewClass(),
    );
  }
}
