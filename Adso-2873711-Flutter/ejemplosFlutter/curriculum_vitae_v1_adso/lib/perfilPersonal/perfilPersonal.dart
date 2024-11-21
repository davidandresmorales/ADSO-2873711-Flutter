import 'package:curriculum_vitae_v1_adso/data/perfilData.dart';
import 'package:curriculum_vitae_v1_adso/data/lenguajes.dart';
import 'package:curriculum_vitae_v1_adso/data/idiomas.dart';
import 'package:flutter/material.dart';

class PerfilPersonal extends StatefulWidget {
  const PerfilPersonal({super.key});

  @override
  State<PerfilPersonal> createState() => _PerfilPersonalState();
}

class _PerfilPersonalState extends State<PerfilPersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información Personal"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap:
                true, // Hace que el GridView tome solo el espacio necesario
            physics:
                NeverScrollableScrollPhysics(), // Desactiva el scroll interno del GridView
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image(
                      image: NetworkImage("assets/images/David2.jpg"),
                      fit: BoxFit.cover,
                      width: 240,
                      height: 240,
                    ),
                  ),
                ),
              ),
              Card(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(Icons.person, size: 24),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 3,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  perfilDataList["nombre"],
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(Icons.phone, size: 24),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 3,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  perfilDataList["celular"],
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(Icons.location_on, size: 24),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 3,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  perfilDataList["dirección"],
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(Icons.link, size: 24),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              flex: 3,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  perfilDataList["gitHub"],
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                        children: [
                          ...lenguajesList.entries.map((entry) {
                            double progreso = obtenerProgreso(entry.key);
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 8.0), // Espaciado entre lenguajes
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                                children: [
                                  Text(
                                    entry.value, // Nombre del lenguaje
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(height: 8),
                                  LinearProgressIndicator(
                                    value: progreso, // Valor de progreso
                                    backgroundColor: Colors.grey[300],
                                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                   elevation: 5, // Elevación para crear un efecto de sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Bordes redondeados
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
                      crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
                      children: [
                        ...idiomasList.entries.map((entry) {
                          // Convertir el porcentaje a un valor numérico para el indicador de progreso
                          double progreso = double.parse(entry.value.replaceAll('%', '')) / 100;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                entry.key, // Nombre del idioma (alineado a la izquierda)
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 4),
                              LinearProgressIndicator(
                                value: progreso, // Usar el valor de progreso calculado
                                backgroundColor: Colors.grey[300],
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.blue),
                              ),
                              const SizedBox(height: 12),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                  ),
              ),
            ],
          ),
          Card(
            child: ListTile(
              title: Text(perfilDataList["perfil"]),
            ),
          )
        ],
      ),
    );
  }
}

 // Función para crear las filas de datos personales
  Widget buildRow(IconData icon, String data) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Icon(icon, size: 24),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              data,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }


double obtenerProgreso(String id) {
  switch (id) {
    case "1":
      return 0.9;
    case "2":
      return 0.8;
    case "3":
      return 0.7;
    case "4":
      return 0.6;
    case "5":
      return 0.8;
    case "6":
      return 0.75;
    case "7":
      return 0.7;
    default:
      return 0.5;
  }
}

double idiomaList(String id) {
  switch (id) {
    case "Reading":
      return 0.9; // 90% habilidad
    case "Speaking":
      return 0.8; // 80% habilidad
    case "Listening":
      return 0.7; // 70% habilidad
    case "Writing":
      return 0.6; // 60% habilidad
    default:
      return 0.5; // Por defecto al 50%
  }
}

