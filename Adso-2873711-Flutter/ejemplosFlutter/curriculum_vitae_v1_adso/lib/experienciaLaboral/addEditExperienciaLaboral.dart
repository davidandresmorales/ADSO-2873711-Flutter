import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController funcionesController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  funcionesController.clear();
  categoriaController.clear();
}

showModalAddEditExperiencia(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Ingresar Experiencia"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: Icon(Icons.save),
              onPressed: () {
                // se ejecutaa cuando se guarda un elemento de experiencia
                Map<String, dynamic> newItem = {
                  // "id": 3,
                  "titulo": tituloController.text,
                  "fechaInicio": fechaInicioController.text,
                  "fechaFin": fechaFinController.text,
                  "funciones": funcionesController.text,
                  "categoria": categoriaController.text,
                  "color": Colors.blue
                };
                miControlador.addItemListaExperienciaLaboral(newItem);
                Get.back();
                limpiarCampos();
                Get.snackbar("Atención!", "Experiencia agregada con éxito",
                    backgroundColor: Colors.green[300],
                    colorText: Colors.white);
              }),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: tituloController,
                  decoration: InputDecoration(
                    labelText: "Título",
                    hintText: "Ingrese título de la experiencia",
                  ),
                ),
                TextFormField(
                  controller: fechaInicioController,
                  decoration: InputDecoration(
                    labelText: "fecha Inicio",
                    hintText: "Ingrese fecha inicio de la experiencia",
                  ),
                ),
                TextFormField(
                  controller: fechaFinController,
                  decoration: InputDecoration(
                    labelText: "Fecha Fin",
                    hintText: "Ingrese fecha fin de la experiencia",
                  ),
                ),
                TextFormField(
                  controller: funcionesController,
                  decoration: InputDecoration(
                    labelText: "Funciones",
                    hintText: "Ingrese las funciones de la experiencia",
                  ),
                ),
                TextFormField(
                  controller: categoriaController,
                  decoration: InputDecoration(
                    labelText: "Categoría",
                    hintText: "Ingrese las categoría de la experiencia",
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
