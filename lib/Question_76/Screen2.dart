import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
 final int output;

 Screen2({required this.output});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Ans : $output',style: TextStyle(fontSize: 25),),
    ));
  }
}
