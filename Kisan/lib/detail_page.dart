import 'package:flutter/material.dart';
import 'soil.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class DetailPage extends StatelessWidget {

  final Detail detail;
  const DetailPage({required this.detail});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          detail.name,
          style: const TextStyle(
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                          colors: GradientColors.lemonGate,
                        )
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('About:'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            detail.about,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                          colors: GradientColors.overSun,
                        )
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('Found in:'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            detail.found,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                          colors: GradientColors.happyUnicorn,
                        )
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('Characteristics:'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            detail.character,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                          colors: GradientColors.youngGrass,
                        )
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('Suitable Crops:'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            detail.crop,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
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
