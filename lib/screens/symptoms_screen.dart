import 'package:flutter/material.dart';
import 'package:wuhanvirus/constants.dart';
import 'package:wuhanvirus/widgets/homeWidgets/symptoms_card.dart';

class SymptomsScreen extends StatefulWidget {
  final imgPath;
  final Color color;

  const SymptomsScreen({this.color, this.imgPath});

  @override
  _SymptomsScreenState createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: KAppBar(color: widget.color),
      body: Column(
        children: <Widget>[
          //Image container
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: kBorderRadius,
              color: widget.color.withOpacity(0.2),
            ),
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                //title
                Positioned.fill(
                  top: 20,
                  left: 20,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Symptoms",
                      style: TextStyle(
                          color: widget.color,
                          fontFamily: "Montserrat",
                          fontSize: 31,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),

                //image
                Positioned.fill(
                  bottom: -20.0,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Hero(
                            tag: widget.imgPath,
                            child: Image(
                              image: AssetImage(widget.imgPath),
                              height: 230.0,
                            ))),
                  ),
                ),
              ],
            ),
          ),

          //Symptom Card
          Flexible(
            fit: FlexFit.loose,
            child: SymptomCardGrid(),
          )
        ],
      ),
    );
  }
}
