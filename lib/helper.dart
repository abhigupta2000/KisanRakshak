import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

class Helper extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelperState();
  }

}

class HelperState extends State<Helper> {
  int type_of_crop=0,soil_type=0,pesticide_use=0,pesticide_count=0;double pesticide_week=0;int count=1;bool isLoading=false,result=false;int ans=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> questions=[
      Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child:  Center(child: Text('What Type of Crop are you growing?',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: DropdownButton<int>(
                      value: type_of_crop,
                      items: const [
                        DropdownMenuItem(child: Text("Food Crops"), value: 0,),
                        DropdownMenuItem(child: Text("Cash Crops"), value: 1,),

                      ],
                      onChanged: (int ?value) {
                        setState(() {
                          type_of_crop = value!;
                        });
                      }),
                ),
              ),
            ),
          ),
           Padding(
             padding: EdgeInsets.all(5),
             child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                onPressed: (){
                  count=2;
                  setState(() {
                  });
                }, child: Text('OK'),
                         )
                         ),
           )
        ],
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child:  Center(child: Text('What Type of Soil are you using?',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<int>(
                      value: soil_type,
                      items: const [
                        DropdownMenuItem(child: Text("Alluvial Soil"), value: 0,),
                        DropdownMenuItem(child: Text("Others(Red,Black etc)"), value: 1,),

                      ],
                      onChanged: (int ?value) {
                        setState(() {
                          soil_type = value!;
                        });
                      }),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: (){
                    count=3;
                    setState(() {
                    });
                  }, child: Text('OK'),
                )
            ),
          )
        ],
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child:  Center(child: Text('Do you use pesticides?',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton<int>(
                        value: pesticide_use,
                        items: const [
                          DropdownMenuItem(child: Text("Never"), value: 0,),
                          DropdownMenuItem(child: Text("Previously Used"), value: 1,),
                          DropdownMenuItem(child: Text("Currently Using"), value: 2,),
                        ],
                        onChanged: (int ?value) {
                          setState(() {
                            pesticide_use = value!;
                          });
                        }),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: (){
                    count=4;
                    setState(() {
                    });
                  }, child: Text('OK'),
                )
            ),
          )
        ],
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child:  Center(child: Text('Pesticide count in a week? (0-100)',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
          ),
           Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)
                ),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value){
                      setState(() {

                      });
                      pesticide_count=int.parse(value);
                    },
                  )
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
                alignment: Alignment.topRight,
                child:  ElevatedButton(
                  onPressed: (){
                    count=5;
                    setState(() {
                    });
                  }, child: Text('OK'),
                )
            ),
          )
        ],
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  radius: 20,
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child:  Center(child: Text('   How many weeks did you use pesticide?',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value){
                      setState(() {
                        pesticide_week=double.parse(value);
                      });
                    },
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () async {
                    isLoading=true;
                    ans=await getData();
                    result=true;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 40,
                    width: 350,
                    color: Colors.green,
                    child:Center(child: Text('Submit',style: GoogleFonts.poppins(color: Colors.white,fontSize: 14),),),
                  ),
                )
            ),
          )
        ],
      ),
    ];
     Size size=MediaQuery.of(context).size;
     var height=size.height;
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.green,
      body: (isLoading==false && result==false)?Column(
        children: [
          SizedBox(
            height: 275,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 90, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/kisan_helper.jpg',),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Kisan Sahayak',style: GoogleFonts.poppins(color: Colors.white,fontSize:32),)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: height-275-80,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
              ),
              child:ListView.builder(
                 physics: const BouncingScrollPhysics(),
                 itemCount: count,
                itemBuilder: (context,index){
                   return questions[index];
                },
              )
            ),
          ),
           Container(
            color: Colors.white,
            height: 80,
          ),
        ],
      ):(result==false)?const CircularProgressIndicator():
          Container(
            height: height,
            width: size.width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: size.width,
                  color: Colors.green,
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/kisan_helper.jpg'),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(child: Text('Kisan Sahayak has calculated and here are the results!',style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),)),
                        ],
                      ),
                      Text('Results',style:GoogleFonts.poppins(fontSize: 36,color: Colors.white),),
                    ],
                  )),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                    height: 300,
                    child: Image.asset(getAsset(ans),fit: BoxFit.fill,)),
                const SizedBox(height: 15,),
                Text(getText(ans),textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 26,fontWeight: FontWeight.w600),),
              ],
            )
          ),
    );
  }
  Future<int> getData() async
  {
    Random random = new Random();
    int a1,a2,a3;
    if(pesticide_count==0)
      {
        a1=1;a2=0;a3=0;
      }
    else if(pesticide_count==1)
      {
        a1=0;a2=1;a3=0;
      }
    else
      {
        a1=0;a2=0;a3=1;
      }
    print(pesticide_week);
    final url = Uri.parse('http://suvoo.pythonanywhere.com/predict?a=1575&b=$type_of_crop&c=$soil_type&d=$pesticide_count&e=$pesticide_week&f=${random.nextInt(50)}&g=$a1&h=$a2&i=$a3&k=0&l=0&m=1');
    print(url);
    final headers = {"Content-type": "application/json"};
    final json = '{"a"=${random.nextInt(4097-150) + 150}&"b"=$type_of_crop&"c"=$soil_type&"d"=$pesticide_count&"e"=$pesticide_week&"f"=${random.nextInt(50)}&"g"=1&"h"=2&"i"=3&"k=1&"l"=2&"m"=3}';
    final response = await get(url,);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    print(int.parse(response.body[1]));
    return int.parse(response.body[1]);
  }
  String getAsset(int ans) {
    if(ans==0)
      {
        return "assets/plant_happy.png";
      }
    else
      {
        return "assets/plant_sad.png";
      }
  }
  String getText(int ans) {
    if(ans==0)
      {
        return "Your crop is Healthy!!";
      }
    else if(ans==1)
      {
        return "Your crop may be damaged";
      }
    else
      {
        return "Your crop is damaged due to overuse of pesticide";
      }
  }
}
