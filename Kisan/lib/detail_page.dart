import 'package:flutter/material.dart';
import 'soil.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class DetailPage extends StatelessWidget {

  final Detail detail;
  const DetailPage({required this.detail});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soil Name',
          style: const TextStyle(
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
