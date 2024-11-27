import 'package:curriculum_vitae_v1_adso/controllers/myController.dart';
import 'package:get/get.dart';

import 'data/experienciaData.dart';
import 'interfaz/principal.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  runApp(Principal());
}

Mycontroller miControlador = Get.find(); // crea una instancia de la clase Mycontroller
