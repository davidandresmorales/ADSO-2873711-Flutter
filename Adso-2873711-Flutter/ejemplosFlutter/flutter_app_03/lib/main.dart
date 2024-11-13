import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return MaterialApp(
      title: 'widgets basicos Flutter',
      home: Column(
        children: [
          const Text(
              overflow: TextOverflow.fade,
              maxLines: 1,
              'Lenguaje de programación'),
          const Icon(
            Icons.add_home_work_sharp,
            color: Color.fromARGB(255, 246, 106, 7),
            size: 100.0,
            semanticLabel: 'Home',
          ),
          const Text('Dart'),
          const Text('Python'),
          const Text('Javascript'),
          const Text('Java'),
          const Text('C++'),
          const Text('C#'),
          const Text('Rust'),
          const Text('SQL'),
          ElevatedButton(
              onPressed: () {}, style: estilos, child: const Text('Enviar'))
        ],
      ),
    );
  }
}