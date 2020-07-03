import 'package:flutter/material.dart';

class PrecautionCardGrid extends StatefulWidget {
  @override
  _PrecautionCardGridState createState() => _PrecautionCardGridState();
}

class _PrecautionCardGridState extends State<PrecautionCardGrid> {
  int selectedIndex = 0;
  List<Map<String, String>> preventions = [
    {
      "prevention": "Protective Mask",
      "desc": "Always remember to wear a protective mask when stepping out.",
      "imgPath": "assets/prevention/mask.png",
    },
    {
      "prevention": "Wash Hands",
      "desc":
          "Wash your hands often with soap and water and for 20 seconds atleast.",
      "imgPath": "assets/prevention/wash.png",
    },
    {
      "prevention": "Cover Cough",
      "desc":
          "Cough or sneeze into your elbow or cover your mouth with a disposable napkin.",
      "imgPath": "assets/prevention/coughCover.png",
    },
    {
      "prevention": "Sanitize Often",
      "desc": "Use alchohol based sanitizer if water and soap are unavailable.",
      "imgPath": "assets/prevention/sanitizer.png",
    },
    {
      "prevention": "No Face Touching",
      "desc":
          "Don't touch your eyes, nose or mouth often and with unwashed hands.",
      "imgPath": "assets/prevention/touch.png",
    },
    {
      "prevention": "Social Distancing",
      "desc":
          "Keep 7m distance from other people. Stay at home and avoid gatherings.",
      "imgPath": "assets/prevention/socialDistance.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 15.0,
          crossAxisCount: 2,
          childAspectRatio: 0.70,
        ),
        scrollDirection: Axis.vertical,
        itemCount: preventions.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 5,
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 650),
                decoration: BoxDecoration(
                  color:
                      index == selectedIndex ? Colors.teal[50] : Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image(
                      image: AssetImage(preventions[index]["imgPath"]),
                      height: 95.0,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${preventions[index]["prevention"]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Text(
                        "${preventions[index]['desc']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
