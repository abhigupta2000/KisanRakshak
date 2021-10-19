import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'info.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Tips(),

));

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
  ];
  Widget infoTemplate(info){
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: GradientColors.summerGames
            ),
          ) ,
          child: ExpansionTile(
            title: Text(
              info.title,
              style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                    info.subtitle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
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

      body: SingleChildScrollView(
          child: Column(
        children: infos.map((info) => infoTemplate(info)).toList(),

      ),
      )

    );
  }
}

