import 'package:curriculum_vitae_v1_adso/interfaz/homePrincipal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Curriculum Vitae V2  - ADSO",
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
    );
  }
}