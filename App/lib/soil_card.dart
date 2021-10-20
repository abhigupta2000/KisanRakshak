import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart';
import 'soil.dart';
class SoilCard extends StatelessWidget {
  // const SoilCard({
  //   Key? key,
  // }) : super(key: key);

  final Soil soil;
  SoilCard ({Key? key, required this.soil}) : super(key: key);

  List<Detail> details = [
    Detail(name: 'Alluvial Soil',
        about: 'Alluvium is loose clay, silt, sand, or gravel that has been deposited by running water in a stream bed, on a floodplain, in an alluvial fan or beach, or in similar settings. Alluvium is also sometimes called alluvial deposit. Alluvium is typically geologically young and is not consolidated into solid rock.',
        found: 'Most of the delta areas of North India. It covers over 35% of total Indian land.',
        character: 'Mix of sandy loam and clay soil. Quick draining in nature. Rich in humus (organic matter) and phosphoric acid. Poor in potash and nitrogen.',
        crop: 'Cotton, wheat, sorghum, bajra, maize, barley, jute, tobacco, green and black gram, chickpea, pigeon pea, soybean, sesame, groundnut, linseed + any type of oilseed, fruit, and vegetable.',
        photo: Image.asset('assets/detail/alluvial1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Black Soil', about: 'The black soils are also called regur (from the Telugu word Reguda) and black cotton soils because cotton is the most important crop grown on these soils.The black soil is very retentive of moisture. It swells greatly and becomes sticky when wet in rainy season. Under such conditions, it is almost impossible to work on such soil because the plough gets stuck in the mud.',
        found: 'Deccan lava tract. This includes states of Gujarat, Madhya Pradesh, Maharashtra, Andhra Pradesh, Tamil Nadu, and Telangana. This soil type is prominent in river valley of rivers Narmada, Godavari, Tapi, and Krishna.',
        character: 'These soils are formed when lava rocks weather away. Rich in magnesium, iron, aluminum, and lime. Poor in nitrogen, phosphorus, and organic matter. Black soils get sticky when fully wet. They develop cracks when fully dry. The soils attain black color due to deposits of humus and salts during their formation. They moisture excellently.',
        crop: 'Cotton is the major crop. So, black soil is also called black cotton soil. Other crops include wheat, cereals, rice, jowar, sugarcane, linseed, sunflower, groundnut, tobacco, millets, citrus fruits, oilseed crops of all kinds, and vegetables.',
        photo: Image.asset('assets/detail/black1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Red and Yellow Soil',
        about: 'Red and Yellow soil are encountered over extensive nonalluvial tracts of peninsular India and are made up of such acidic rocks as granite, gneiss, and schist. They develop in areas in which rainfall leaches soluble minerals out of the ground and results in a loss of chemically basic constituents; a corresponding proportional increase in oxidized iron imparts a reddish hue to many such soils. Hence, they are commonly described as ferralitic soils.',
        found: 'Deccan plateau, Western Ghat, Orissa, and Chhattisgarh.',
        character: 'The soils are red due to iron oxide in them. The soils form when metamorphic rocks weather away. Rich in potash. Somewhat acidic. Poor in nitrogen, magnesium, lime, phosphorus, and organic matter. Soils are sandy.',
        crop: 'Groundnut, potato, maize/corn, rice, ragi, wheat, millets, pulses, sugarcane, oilseeds, and fruits like citrus, orange, mango, and vegetables.',
        photo: Image.asset('assets/detail/red-yellow1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Laterite Soil',
        about: 'Laterite is both a soil and a rock type rich in iron and aluminium and is commonly considered to have formed in hot and wet tropical areas. Nearly all laterites are of rusty-red coloration, because of high iron oxide content. They develop by intensive and prolonged weathering of the underlying parent rock, usually when there are conditions of high temperatures and heavy rainfall with alternate wet and dry periods.',
        found: 'Madhya Pradesh, Kerala, Karnataka, Tamil Nadu, Assam, and Orissa.',
        character: 'Acidic soils, rich in iron. They are used in the making of bricks due to high iron content. Poor in organic matter, calcium, nitrogen, and phosphate. Not very fertile.',
        crop: 'Cotton, wheat, rice, pulses, rubber, tea, coffee, coconut, and cashews.',
        photo: Image.asset('assets/detail/laterite1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Arid Soil',
        about: 'Arid soils are a soil order in USDA soil taxonomy. Arid soils form in an arid or semi-arid climate. Arid soils dominate the deserts and xeric shrublands, which occupy about one-third of the Earths land surface. Arid soils have a very low concentration of organic matter, reflecting the paucity of vegetative production on these dry soils. Water deficiency is the major defining characteristic of Arid soils. ',
        found: 'It is mainly found in regions of Aravalli west, Rajasthan.',
        character: 'Sandy soils with low clay content. Poor in organic matter and moisture because arid regions are usually dry. Saline in nature with low nitrogen and high salt. Rich in plant food. Their color varies between red and brown.',
        crop: 'Saline resistant and drought tolerant crops are suitable. Barley, maize, wheat, millets, cotton, and pulses.',
        photo:Image.asset('assets/detail/arid1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Mountain and Forest Soil',
        about: 'Forest and mountain soils occur not only at higher elevations, but also at lower elevations that have sufficient rainfall. They are formed by the deposition of organic matter derived from forest growth and are heterogeneous in nature, depending on parent rocks, ground configuration, and climate. They are generally infertile for the production of field crops, but useful for supplying forest products, such as timber and fuel.',
        found: 'Himalayan area, Western and Eastern Ghats, and a few regions of the Peninsular Plateau.',
        character: 'Acidic soil, rich in organic matter. Poor in lime, phosphorus, and potash. Good fertilization is required in these soils.',
        crop: 'Wheat, barley, maize, tea, coffee, spices, tropical and temperate fruits',
        photo: Image.asset('assets/detail/mountain1.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Desert Soil',
        about: 'Desert soil is mostly sandy soil (90–95%) found in low-rainfall regions. It has a low content of nitrogen and organic matter with very high calcium carbonate and phosphate, thus making it infertile. The amount of calcium is 10 times higher in the lower layer than in the topsoil. The availability of nitrogen in the form of nitrates, using fertilizer, and proper irrigation, in addition to the already-present phosphates makes it useful.',
        found: 'Areas of Rajasthan, Rann of Kutch of Gujarat, adjoining regions of Haryana and Punjab, and coastal areas of Kerala, Tamil Nadu, and Orissa. It covers about 4% of the total Indian land.',
        character: 'Dry and sandy soil with some quantity of nitrogen present in it.',
        crop: 'Only drought tolerant crops are suitable. Two examples are barley and millet.',
        photo: Image.asset('assets/detail/desert1.jpg',fit: BoxFit.fill,))
  ];

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
          color: Colors.green,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    soil.title,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),

                Container(
                    height: 175,
                    width: 300,
                    child: soil.image
                ),

                const SizedBox(
                  height: 5.0,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(4.0,4.0,4.0,20.0),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(detail: details[soil.index],)),
              );
            },
          ),
        ),
      ),
    );
  }
}