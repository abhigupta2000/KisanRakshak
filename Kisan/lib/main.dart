import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      image: Image.asset('assets/soil/alluvial.jpeg',fit: BoxFit.fill,),
      index: 0),
    Soil(title: 'Black Soil',
        image: Image.asset('assets/soil/black.jpg',fit: BoxFit.fill,),
        index: 1),
    Soil(title: 'Red and Yellow Soil',
        image: Image.asset('assets/soil/red-yellow.jpg',fit: BoxFit.fill,),
        index: 2),
    Soil(title: 'Laterite Soil',
        image: Image.asset('assets/soil/laterite.jpg',fit: BoxFit.fill,),
        index: 3),
    Soil(title: 'Arid Soil',
        image: Image.asset('assets/soil/arid.jpg',fit: BoxFit.fill,),
        index: 4),
    Soil(title: 'Mountain and Forest Soil',
        image: Image.asset('assets/soil/mountain.jpg',fit: BoxFit.fill,),
        index: 5),
    Soil(title: 'Desert Soil',
        image: Image.asset('assets/soil/desert.jpg',fit: BoxFit.fill,),
        index: 6)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text(
          'Soilpedia',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 25.0,
          )
        ),
        backgroundColor: Colors.green[200],
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

