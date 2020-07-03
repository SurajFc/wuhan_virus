import 'package:flutter/material.dart';
import 'package:wuhanvirus/constants.dart';
import 'package:wuhanvirus/widgets/homeWidgets/precaution_card.dart';

// ignore: must_be_immutable
class PrecautionsScreen extends StatefulWidget {
  final imgPath;
  final Color color;

  PrecautionsScreen({this.imgPath, this.color});

  @override
  _PrecautionsScreenState createState() => _PrecautionsScreenState();
}

class _PrecautionsScreenState extends State<PrecautionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: KAppBar(color: widget.color),
      body: Column(
        children: <Widget>[
          //image container
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
            ),
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: widget.color.withOpacity(0.2),
              ),
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  //Name
                  Positioned.fill(
                    top: -10,
                    left: 20,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Precautions",
                        style: TextStyle(
                            color: widget.color,
                            fontFamily: "Montserrat",
                            fontSize: 31,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),

                  //Image
                  Positioned.fill(
                    bottom: -25.0,
                    right: -6.0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Hero(
                          tag: widget.imgPath,
                          child: Image(
                            image: AssetImage(widget.imgPath),
                            height: 230.0,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Precaution Card Grid
          Flexible(
            fit: FlexFit.loose,
            child: PrecautionCardGrid(),
          )
        ],
      ),
    );
  }
}
