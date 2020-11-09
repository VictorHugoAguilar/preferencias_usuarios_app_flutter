import 'package:flutter/material.dart';
import 'package:preferencias_usuarios/src/pages/home_page.dart';
import 'package:preferencias_usuarios/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/menu-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            title: Text('Party Mode'),
            leading: Icon(
              Icons.people,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Setting'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onTap: () => {
              // Navigator.pop(context),
              // Navigator.pushNamed(context, routeName),
              Navigator.pushReplacementNamed(context, SettingPage.routeName),
            },
          ),
        ],
      ),
    );
  }
}
