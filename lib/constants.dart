import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);
  KAppBar({
    @required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: color,
            size: 28,
          )),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

const TextStyle kAppBarTitle = TextStyle(
  fontSize: 20,
  fontFamily: "Montserrat",
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

const BorderRadius kBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(25.0),
  bottomRight: Radius.circular(25.0),
);

const TextStyle kDropDownTextStyle = TextStyle(
  fontFamily: "Montserrat",
  fontSize: 17,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
