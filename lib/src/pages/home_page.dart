import 'package:flutter/material.dart';
import 'package:preferencias_usuarios/src/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: _crearMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundarios'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre de usuario'),
          Divider(),
        ],
      ),
    );
  }

  _crearMenu(BuildContext context) {
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
