import 'package:flutter/material.dart';
import 'soil.dart';
import 'soil_card.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SoilList(),
  ));
}

class SoilList extends StatefulWidget {
  const SoilList({Key? key}) : super(key: key);

  @override
  _SoilListState createState() => _SoilListState();
}

class _SoilListState extends State<SoilList> {

  List<Soil> soils = [
    Soil(title: 'Alluvial Soil',
      desc: 'The alluvium is loose clay, silt, sand, or gravel that has been deposited by running water in a stream bed, on a floodplain, in an alluvial fan or beach, or in similar settings. The alluvium is also sometimes called an alluvial deposit. The alluv...',
      image: Image.asset('assets/soil/alluvial.jpeg',fit: BoxFit.fill,),index: 0),
    Soil(title: 'Black Soil',
        desc: 'The black soils are also called regur (from the Telugu word Reguda) and black cotton soils because cotton is the most important crop grown on these soils. The black soil is very retentive of moisture. It swells greatly and becomes sticky when wet...',
        image: Image.asset('assets/soil/black.jpg',fit: BoxFit.fill,),index: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SoilPedia',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: soils.map((soil) {
            return SoilCard(soil: soil);
          }).toList(),
        ),
      ),
    );
  }
}

