import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/experienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class Principalexperiencialaboral extends StatefulWidget {
  const Principalexperiencialaboral({super.key});

  @override
  State<Principalexperiencialaboral> createState() =>
      _PrincipalexperiencialaboralState();
}

class _PrincipalexperiencialaboralState
    extends State<Principalexperiencialaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: Text("Experiencia Laboral"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Utils.primaryColor,
          foregroundColor: Utils.foregroundColor,
          child: Icon(Icons.add),
          onPressed: () {
            showModalAddEditExperiencia(context);
          }),
      body: ListView.builder(
        itemCount: miControlador.ListaExperienciaLaboral.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(miControlador.ListaExperienciaLaboral[index]["titulo"]),
              subtitle: Text(miControlador.ListaExperienciaLaboral[index]["categoria"]),
              leading:
                  Text(miControlador.ListaExperienciaLaboral[index]["fechaInicio"]),
                  trailing: 
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () {
                            // Lógica para visualizar el detalle de una experiencia laboral
                          }, icon: Icon(Icons.search)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      ),

            ),
          );
        },
      ),
    ));
  }
}
