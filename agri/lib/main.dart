import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Tips(),

));

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true ,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 0.0,
          title: Text('TIPS',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ) ,),
          centerTitle: true,
        ),
    );
  }
}

