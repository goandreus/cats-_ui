import 'package:catbox/ui/cat_list.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp( CatBoxApp());
}

class CatBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Ubuntu'
      ),
      home:  CatList(),
    );
  }
}
