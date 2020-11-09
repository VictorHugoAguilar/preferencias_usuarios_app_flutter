import 'package:flutter/material.dart';
import 'package:preferencias_usuarios/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuarios/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    // si es la ultima pagina visitada lo grabamos
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor:
            (prefs.colorSecundario) ? Colors.teal : Colors.blueAccent,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundarios ${prefs.colorSecundario} '),
          Divider(),
          Text('Genero: ${prefs.genero} '),
          Divider(),
          Text('Nombre de usuario ${prefs.nombre}'),
          Divider(),
        ],
      ),
    );
  }
}
