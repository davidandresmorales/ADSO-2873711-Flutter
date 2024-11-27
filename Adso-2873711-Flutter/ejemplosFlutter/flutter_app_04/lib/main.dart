import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informacion Personal',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Informacion Personal'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            ListTile(
              title:Text('David Morales'),
              subtitle: Text('Nombre'),
              leading: Icon(Icons.person),
            )
            
          ],
        ),
      ),
    );
  }
}