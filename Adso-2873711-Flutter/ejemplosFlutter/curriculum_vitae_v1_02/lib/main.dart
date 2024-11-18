import 'package:curriculum_vitae_v1_02/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(HomePrincipal());
}

class HomePrincipal extends StatelessWidget {
  const HomePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: "Curriculum vitae v1",
       home: Menu()
    );
  }
}
