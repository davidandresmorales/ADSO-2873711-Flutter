import 'package:curriculum_vitae_v1_02/data/formacionFormalData.dart';
import 'package:flutter/material.dart';
import 'data/formacionFormalData.dart';
import 'package:curriculum_vitae_v1_02/data/ExperienciaLaboralData.dart';
import 'package:curriculum_vitae_v1_02/data/certificacion-cursos.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Curriculum vitae v1")),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage("assets/images/David2.jpg"),
              ),
            ),
          ),
          const Divider(
            color: Colors.orange,
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Información Personal"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Formación Académica"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.school),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("Formación académica"),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        body: ListView.separated(
                          itemCount: formacionAcademicaLista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(
                                  formacionAcademicaLista[index]["titulo"]),
                              subtitle: Text(
                                formacionAcademicaLista[index]["tipoEstudio"],
                                style: TextStyle(
                                    color: formacionAcademicaLista[index]
                                        ["color"]),
                              ),
                              leading: Text(formacionAcademicaLista[index]
                                      ["anioFinalizacion"]
                                  .toString()),
                            );
                          },
                        ),
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: Text("Certificaciones y curso"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.science),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Certificaciones y Cursos"),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      body: ListView.separated(
                        itemCount: estudiosYCursos.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(estudiosYCursos[index]["titulo"]),
                            subtitle: Text(
                              estudiosYCursos[index]["categoria"],
                              style: TextStyle(
                                  color: estudiosYCursos[index]
                                      ["colorCategoria"]),
                            ),
                            leading: Text(estudiosYCursos[index]
                                    ["anioRealizacion"]
                                .toString()),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title:
                                        Text(estudiosYCursos[index]["titulo"]),
                                    content: Text(
                                        estudiosYCursos[index]["descripcion"]),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Cerrar"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: Text("Experiencia Laboral"),
              leading: Icon(Icons.factory),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Experiencia Laboral"),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      body: ListView.separated(
                        itemCount: experienciasLaborales.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        },
                        itemBuilder: (BuildContext context, int index) {
                          final experiencia = experienciasLaborales[index];
                          return Card(
                            elevation: 5,
                            margin: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Icon(
                                experiencia["iconoCategoria"],
                                color: experiencia["colorCategoria"],
                                size: 40,
                              ),
                              title: Text(
                                experiencia["titulo"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${experiencia["fechaInicio"]} - ${experiencia["fechaFin"]}",
                                    style: TextStyle(
                                        color: experiencia["colorCategoria"]),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Categoría: ${experiencia["categoria"]}",
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(experiencia["titulo"]),
                                      content: SingleChildScrollView(
                                        child: Text(
                                          experiencia["funciones"],
                                          style: const TextStyle(fontSize: 16),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Cerrar"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Card(
            elevation: 10,
            child: ListTile(
              title: Text("Habilidades"),
              leading: Icon(Icons.fact_check),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Card(
            elevation: 10,
            child: ListTile(
              title: Text("Proyectos Destacados"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Card(
            elevation: 10,
            child: ListTile(
              title: Text("Idiomas"),
              leading: Icon(Icons.language),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Card(
            elevation: 10,
            child: ListTile(
              title: Text("Referencias Personales"),
              leading: Icon(Icons.people_alt),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
