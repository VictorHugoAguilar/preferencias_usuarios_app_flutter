import 'package:flutter/material.dart';
import 'package:preferencias_usuarios/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuarios/src/widgets/menu_widget.dart';

class SettingPage extends StatefulWidget {
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // Creamos una instancia de las preferencis del usuario
  final prefs = new PreferenciasUsuario();

  bool _colorSecundario;
  int _genero;
  String _nombre;

  TextEditingController _textControler; // = new TextEditingController();

  @override
  void initState() {
    super.initState();
    // inicializamos las variables con los datos del SharedPreferences
    _genero = prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    _nombre = prefs.nombre;

    // si es la ultima pagina visitada lo grabamos
    prefs.ultimaPagina = SettingPage.routeName;

    _textControler = new TextEditingController(text: _nombre);
  }

  _setSelectedRadio(int valor) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('genero', valor);

    prefs.genero = valor;

    setState(() {
      _genero = valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
        backgroundColor:
            (prefs.colorSecundario) ? Colors.teal : Colors.blueAccent,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color secundario'),
            onChanged: (value) {
              prefs.colorSecundario = value;
              setState(() {
                prefs.colorSecundario = value;
                _colorSecundario = value;
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textControler,
              decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre de la persona usando el teléfono'),
              onChanged: (value) {
                prefs.nombre = value;
              },
            ),
          )
        ],
      ),
    );
  }
}
