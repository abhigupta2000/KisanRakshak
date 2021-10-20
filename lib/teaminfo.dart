import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeamInfoState();
  }

}

class TeamInfoState extends State<TeamInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: const Color(0xFFFEFBEA)
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: GradientColors.februaryInk,
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: ()=>Navigator.pop(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('Meet The Team',style: GoogleFonts.poppins(fontSize: 24,color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap:()=>launch('https://github.com/Blazikengr8'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.green,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/60261112?s=400&u=2162485400ab03771599d1b60f78fc8ec87bba92&v=4'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Abhigyan Singh',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('Tech Lead',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap:()=>launch('https://github.com/Suvoo'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color(0xFFf8b470),
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Suvodeep Sinha',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('ML Ops Developer',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                            ],
                          ),
                          const CircleAvatar(
                            backgroundColor: const Color(0xFFf8b470),
                            radius: 45,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/52796258?v=4'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap:()=>launch('https://github.com/namannj15'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration:BoxDecoration(
                        color:  Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.green,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/77778261?v=4'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Naman Jain',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('Product Manager',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),),
                              Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: ()=>launch('https://github.com/abhigupta2000'),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration:BoxDecoration(
                        color: const Color(0xFFf8b470),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Abhijeet Gupta',style: GoogleFonts.poppins(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('App Developer',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                              Text('Know More >',style: GoogleFonts.poppins(color: Colors.white),),
                            ],
                          ),
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: const Color(0xFFf8b470),
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/52798960?v=4'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}