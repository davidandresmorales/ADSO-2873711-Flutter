import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget { //MyHOme hereda de statefulwidget
  const MyHome({super.key});//Cosntructor calse MyHome

  @override//Se Sobreescribe el metodo del padre createState para poder crear estados del widget
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override//Se sobreescirbe el metodo build para retornar un widget con toda la interfaz
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Sitios Turisticos',
      home: Scaffold(
        appBar: AppBar(
        title:const Text('Sitios turisticos'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text('La torre Eiffel'),
                Text('La gran muralla China'),
                Text('Coliseo Romano'),
                Text('Santiago Bernabeu'),
                Text('Machu Pichu'),
              ],
            ),
          ],
        ),
         ),
    );
  }
}