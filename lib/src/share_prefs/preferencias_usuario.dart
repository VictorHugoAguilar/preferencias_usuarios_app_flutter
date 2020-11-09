import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // bool _colorSecundario;
  // int _genero;
  // String _nombre;
  // String ultimaPagina;

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int valor) {
    _prefs.setInt('genero', valor);
  }

  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  get nombre {
    return _prefs.getString('nombre') ?? 'anónimo';
  }

  set nombre(String value) {
    _prefs.setString('nombre', value);
  }

  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
