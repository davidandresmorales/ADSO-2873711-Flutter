import 'package:curriculum_vitae_v1_adso/perfilPersonal/perfilPersonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Curriculum Vitae V2 - ADSO")),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Image(image: NetworkImage("assets/images/Inmovilla.jpg")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("assets/images/David2.jpg"),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 20,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Información Personal"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                // Navigator.pop(context);
                Get.to(PerfilPersonal());
              },
            ),
            ListTile(
              title: Text("Educación Formal"),
              leading: Icon(Icons.school),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
                Get.defaultDialog(
                  title: "Alerta",
                  middleText: "Esta sección pronto será publica...",
                  onConfirm: () {},
                  onCancel: () {},
                );
              },
            ),
            ListTile(
              title: Text("Formación Continuada"),
              leading: Icon(Icons.book),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
                Get.snackbar("Atención!", "Esta sección aún no está disonible",
                    backgroundColor: Colors.red[300],
                    colorText: Colors.white,
                    icon: Icon(Icons.dangerous));
              },
            ),
            ListTile(
              title: Text("Publicaciones"),
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Experiencia Laboral"),
              leading: Icon(Icons.work_outline),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Referencias"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Acerca de"),
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
