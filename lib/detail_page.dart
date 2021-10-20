import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'soil.dart';

class DetailPage extends StatelessWidget {

  final Detail detail;
  const DetailPage({required this.detail});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_back_ios,
          color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          detail.name,
          style: GoogleFonts.poppins(
            fontSize: 25.0,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.green[200],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 350,
                  child: detail.photo,
                ),

                const SizedBox(
                  height: 15.0,
                ),

                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                              'About:',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                          child: Text(
                            detail.about,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                              'Found in:',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,8.0),
                          child: Text(
                            detail.found,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                              'Characteristics:',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,8.0),
                          child: Text(
                            detail.character,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                              'Suitable Crops:',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,8.0),
                          child: Text(
                            detail.crop,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
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
