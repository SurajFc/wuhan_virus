import 'package:flutter/material.dart';
import 'package:wuhanvirus/screens/myths_screen.dart';
import 'package:wuhanvirus/screens/precautions_screen.dart';
import 'package:wuhanvirus/screens/stats_dashboard_screens/world_stat.dart';
import 'package:wuhanvirus/screens/symptoms_screen.dart';
import 'package:wuhanvirus/screens/update_screen.dart';
import 'package:wuhanvirus/screens/virus_screen.dart';

class CategoryTab extends StatelessWidget {
  final imgPath, tabName, tabDesc, imgHeight, imgLeft, imgBottom;
  final Color color;

  const CategoryTab(
      {this.imgPath,
      this.tabName,
      this.color,
      this.tabDesc,
      this.imgHeight = 150.0,
      this.imgLeft = 15.0,
      this.imgBottom = -8.0});

  Function getPage(tabName, context) {
    switch (tabName) {
      case ("Symptoms"):
        return () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                SymptomsScreen(color: color, imgPath: imgPath)));
      case ("Precautions"):
        return () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                PrecautionsScreen(color: color, imgPath: imgPath)));
      case ("Myths"):
        return () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MythsScreen(color: color, imgPath: imgPath)));
      case ("Virus"):
        return () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                VirusDetailsScreen(color: color, imgPath: imgPath)));
      case ("Updates"):
        return () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UpdatesScreen(
                  color: color,
                  imgPath: imgPath,
                )));
      case ("Statistics"):
        return () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WorldStatScreen()));
    }
    return () {};
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: getPage(tabName, context),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        height: 142,
        child: Stack(
          children: <Widget>[
            //Title Container
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(left: 150, right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color.withOpacity(0.13),
                  ),
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$tabName",
                        style: TextStyle(
                            color: color,
                            fontFamily: "Montserrat",
                            fontSize: 23,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "$tabDesc",
                        style: TextStyle(
                            color: color,
                            fontFamily: "Montserrat",
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: imgLeft,
              bottom: imgBottom,
              child: Container(
                height: imgHeight,
                child: Hero(
                    tag: imgPath, child: Image(image: AssetImage(imgPath))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
