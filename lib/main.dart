import 'package:flutter/material.dart';

import 'package:module4/Question_List/Question_list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Module4(),
    );
  }
}
