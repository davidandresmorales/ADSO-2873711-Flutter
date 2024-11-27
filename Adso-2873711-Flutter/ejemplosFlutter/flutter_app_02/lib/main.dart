import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());//Aca se inicia y se lanza la aplicacion
}
class Principal extends StatelessWidget {// Se crea una clase que hereda de stateleWidget para crear un widget sin estado 
  const Principal({super.key});//Constructor de la clase principal

  @override//Se sobreescribe el metodo build de la calse padre para generarle interfaz de usuario
  Widget build(BuildContext context) {
    //Se retorna un widget, en nuestro caso MaterialApp
    return const MaterialApp(
      title: 'Mi Primera App - ADSO2873711',
      home: Text("Primera aplicacion en flutter\nDavid Morales\nADSO 2873711 \nCPIC - SENA"),
    );
  }
}