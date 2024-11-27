import 'package:get/get.dart';

class Mycontroller extends GetxController {
  final _titulo = "Curriculum Vitae V2 - ADSO"
      .obs; // Definimos una variable tipo string con un observable para verificar cambios dentro de la aplicación y poder impactar o actualizar algún widget o componente en nuestra app
  final _listaExperienciaLaboral = [].obs;

  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String, dynamic> item) {
    _listaExperienciaLaboral.add(item);
  }

  void cambiarListaExperienciaLaboral(List item) {
    _listaExperienciaLaboral.value = item;
  }

  String get Titulo => _titulo.value;
  List get ListaExperienciaLaboral => _listaExperienciaLaboral.value;
}
