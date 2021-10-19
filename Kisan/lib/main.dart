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
      image: Image.asset('assets/soil/alluvial.jpeg',fit: BoxFit.fill,),
      index: 0),
    Soil(title: 'Black Soil',
        desc: 'The black soils are also called regur (from the Telugu word Reguda) and black cotton soils because cotton is the most important crop grown on these soils. The black soil is very retentive of moisture. It swells greatly and becomes sticky when wet...',
        image: Image.asset('assets/soil/black.jpg',fit: BoxFit.fill,),
        index: 1),
    Soil(title: 'Red and Yellow Soil', desc: 'Red and Yellow soil are encountered over extensive nonalluvial tracts of peninsular India and are made up of such acidic rocks as granite, gneiss, and schist. They develop in areas in which rainfall leaches soluble minerals out of the ground and r...',
        image: Image.asset('assets/soil/red-yellow.jpg',fit: BoxFit.fill,),
        index: 2),
    Soil(title: 'Laterite Soil',
        desc: 'Laterite is both a soil and a rock type rich in iron and aluminium and is commonly considered to have formed in hot and wet tropical areas. Nearly all laterites are of rusty-red coloration, because of high iron oxide content. They develop by inten...',
        image: Image.asset('assets/soil/laterite.jpg',fit: BoxFit.fill,),
        index: 3),
    Soil(title: 'Arid Soil',
        desc: 'Arid soils are a soil order in USDA soil taxonomy. Arid soil forms in an arid or semi-arid climate. Arid soils dominate the deserts and xeric shrublands, which occupy about one-third of the Earths land surface. Arid soils have a very low concentra...',
        image: Image.asset('assets/soil/arid.jpg',fit: BoxFit.fill,),
        index: 4),
    Soil(title: 'Mountain and Forest Soil',
        desc: 'Forest and mountain soils occur not only at higher elevations but also at lower elevations that have sufficient rainfall. They are formed by the deposition of organic matter derived from forest growth and are heterogeneous in nature, depending on ...',
        image: Image.asset('assets/soil/mountain.jpg',fit: BoxFit.fill,),
        index: 5),
    Soil(title: 'Desert Soil',
        desc: 'Desert soil is mostly sandy soil (90–95%) found in low-rainfall regions. It has a low content of nitrogen and organic matter with very high calcium carbonate and phosphate, thus making it infertile. The amount of calcium is 10 times higher in the ...',
        image: Image.asset('assets/soil/desert.jpg',fit: BoxFit.fill,),
        index: 6)
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

