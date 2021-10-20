import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  List<Info> infos =[
    Info(title: 'Irrigation Water Supply Augmentation and Management',subtitle: 'By using sprinkler irrigation systems you can increase crop yields up to 50%. If the crops get too much water, the roots can rot, and the crops will not get enough oxygen from the soil. So, the surplus of water on fields can equally affect the overall growth and development of crops directly and also its yield and quality.'),
    Info(title: 'Improve Soil and then Increase Crop Yield',subtitle: 'Find the cause of decreasing crop yield by sait resting is the first step to finding the source of the issue whether it is a disease, a lack of nutrients, or unproductive soil Then the soil can be treated with the suitable organic product needed to solve the problem, without the use of synthetic chemicals which can harm the environment (and provide only a temporary solution) Biotechnology has been shown to increase crop yields it provides an alternative to chemical pesticides, helping eliminate millions of pounds of pesticide applications worldwide.' ),
    Info(title: 'Varieties Selection or Quality of Seeds for Crop Yield Improvement',subtitle: 'Improved heat-tolerant varieties allow the plant to maintain crop yields at higher temperatures. Heat tolerant varieties could increase crop yields from up to 23 %. Agricultural productivity mainly depends on the quality of seeds with which farmers sow their fields. By choosing certified seeds cost higher than those that do not have certification, but the result will be worth it because the proper quality of seeds is the main factor that affects crop yield. Planting high-quality seeds are the method to increase crop yield.'),
    Info(title: 'Conservation tillage for Crop Yield Improvement',subtitle: 'By applying conservation tillage practices, you save time, fuel and increases crop yield. Adverse effects of soil compaction on crop production recognized for many years.'),
    Info(title: 'Monitoring Crops Growth',subtitle: 'From the early stage of crop development through budding and up to harvesting, it is important to monitor plant health to timely detect any problem that can arise on given farmland and that can affect the yield of crops.Crop monitoring provides data on daily temperatures and calculates their total sum. Based on this data, the software is capable of detecting growth stages for several types of plants and represents their correlations with other data so that the farmers could make well weighted decisions.'),
    Info(title: 'Practice Seasonal Soil Rotation for Crop Yield Improvement',subtitle: 'Practice Seasonal Soil Rotation for Crop Yield Improvement'),
    Info(title: 'Work With the Weather',subtitle: 'Much of farming is out of your control. Extreme weather, the daily average temperature level. and the life cycle of plants and insects are not under your authority. The weather instead of guessing what will come next is powerful for agribusiness. And technology is the most straightforward method to get there.'),
    Info(title: 'Plant High Quality Seed',subtitle: 'In India, farming is not a low-cost business, so it makes sense that owners and farm managers are looking to limit their expenditures. But when hoping to increase crop yield, avoid the mistake of cutting costs on seeds Low quality seeds are giving you an unfortunate result it is better to streamline farming operations in other ways rather than choosing inferior seeds'),
    Info(title: 'Plant Early, Plant Effectively',subtitle: 'Choosing the right time to plant is the most important part of planting. The best strategy to use to increase yields is your soil is reacty, start planting Early planting can result in increased crop yields.Select the right time to plant this is a critical process of planting if soil is ready, do the planting several tests can be performed to test how ready your solls.'),
    Info(title: 'Test Your Soil',subtitle: 'Testing the soil must always be on top of your list. Examine all the properties like potassium phosphorus, and fertilization levels'),
    Info(title: 'Practice Seasonal Soil Rotation',subtitle: 'When you are planting season-by-season, it is very important to understand how planting recurring crops can affect your overall yield. If you do not have access to either, you can need to consider planting alternative crops in alternating years. Planting an alternating crop mainly helps to diversify the demands on your soil. Try and alternate crops in different seasons, or also you practice med farming.'),
    Info(title: 'Know the Yield Potential',subtitle: 'It is not enough to plant seeds and hope for the best, you should understand your fields growth potential Understanding the crop types you are using is key when assessing yield potential'),
  ];
  Widget infoTemplate(info){
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green,
            ) ,
            child: ExpansionTile(
              title: Text(
                info.title,
                style:GoogleFonts.poppins(fontSize: 20.0,
                    //fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    info.subtitle,
                    style: GoogleFonts.poppins(color: Colors.black54),
                  ),
                )
              ],
            ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment:Alignment.topCenter,
      child: Container(
              height: MediaQuery.of(context).size.height-80,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[200],
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Tips',style: GoogleFonts.poppins(fontSize: 36,color: Colors.black,fontWeight: FontWeight.w500),),
                    ),
                    Column(
                      children: infos.map((info) => infoTemplate(info)).toList(),
            ),
                  ],
                ),
              ),
      ),
    );
  }
}
class Info {
  String title;
  String subtitle;

  Info({required this.title,required this.subtitle});
}
