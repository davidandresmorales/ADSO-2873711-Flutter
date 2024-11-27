import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae V1',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: CurriculumVitaeScreen(),
    );
  }
}

class CurriculumVitaeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum Vitae V1'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage(
                'assets/David2.jpg'), // Ruta de la imagen desde assets
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildMenuItem(context, Icons.person, 'Información Personal',
                    'Estudiante de 17 años interesado en la programación.'),
                _buildMenuItem(context, Icons.school, 'Formación Académica',
                    'Cursando Análisis y Desarrollo de Software.'),
                _buildMenuItem(
                    context,
                    Icons.card_membership,
                    'Certificaciones y Cursos',
                    'Cursos de programación en Flutter y Dart.'),
                _buildMenuItem(context, Icons.work, 'Experiencia Laboral',
                    'Sin experiencia laboral formal.'),
                _buildMenuItem(context, Icons.star, 'Habilidades',
                    'Habilidades en programación y solución de problemas.'),
                _buildMenuItem(
                    context,
                    Icons.star_border,
                    'Proyectos destacados',
                    'Desarrollo de proyectos en Flutter.'),
                _buildMenuItem(context, Icons.language, 'Idiomas',
                    'Español (nativo), Inglés (básico).'),
                _buildMenuItem(context, Icons.people, 'Referencias personales',
                    'Referencias disponibles bajo solicitud.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, IconData icon, String title, String message) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(title),
                content: Text(message),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cerrar'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
