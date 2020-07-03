import 'package:flutter/material.dart';
import '../constants.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isDark = false;

  ListTile _buildListTile(String title, IconData icn, Color clr, Function fnc) {
    return ListTile(
      leading: Icon(
        icn,
        size: 35.0,
        color: clr,
      ),
      title: Text(
        title,
        style: kAppBarTitle,
      ),
      onTap: fnc,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: null,
          ),
          _buildListTile(
              'Profile', Icons.account_circle, Colors.blue, () => {}),
          _buildListTile('Setting', Icons.settings, Colors.blue, () => {}),
          _buildListTile('Contact', Icons.mail, Colors.blue, () => {}),
          Row(
            children: <Widget>[
              Switch(
                onChanged: (value) {
                  setState(() {
                    isDark ? isDark = false : isDark = true;
                  });
                },
                value: isDark,
                activeColor: Colors.blue,
              ),
              SizedBox(width: 10.0),
              Text(
                'Dark Mode',
                style: kAppBarTitle,
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildListTile(
                'Exit',
                Icons.exit_to_app,
                Colors.blue,
                () => {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
