import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sprint0/entrar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  Map<String, dynamic> datosUser = {};

  //void agregarUsuario(Map<String, dynamic> nuevoUser) {

  // }

  String nuser = 'EricWest';
  dynamic contrasena = 'E123';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Image.asset('assets/images/smartstock.jpeg',
              width: 300.00, height: 240),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Usuario o email'),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return 'Introduce un usuario valido (más de 3 caracteres)';
                } else
                  return null;
              },
              onSaved: (valor) {
                datosUser['username'] = valor;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Contraseña'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return 'Introduce una contraseña valida (mas de 3 caracteres)';
                } else
                  return null;
              },
            ),
          ),
          //Boton loggin ya que no me deja ponerlo fuera del Widget
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Iniciando sesión')));
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EntrarPage()));
                  }
                },
                child: Text('Entrar'),
              ))
        ],
      ),
    );
  }
}
