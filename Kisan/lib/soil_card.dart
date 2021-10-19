import 'package:flutter/material.dart';
import 'soil.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class SoilCard extends StatelessWidget {
  // const SoilCard({
  //   Key? key,
  // }) : super(key: key);

  final Soil soil;
  SoilCard ({required this.soil});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: GradientColors.dustyGrass,
                  )
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(soil.title),
                  ),

                  Container(
                      height: 175,
                      width: 300,
                      child: soil.image
                  ),

                  const SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      soil.desc,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}