import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turísticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turísticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: 
       ListView.builder(
         itemCount: sitiosTuristicos.length,
         itemBuilder: (BuildContext context, int index) {
           return Card(
            color: const Color.fromARGB(255, 208, 214, 208),
            shadowColor: Colors.black,
            surfaceTintColor: Colors.grey,
            elevation: 5,
            margin: const EdgeInsets.all(10),
             child: ListTile(
               title: Text(' ${sitiosTuristicos[index]}'),
               subtitle: Text('Maravilla N ${index+1}'),
               leading: const Icon(Icons.add_location_alt),
               trailing: const Icon(Icons.arrow_forward_ios),
               onTap: (){
               // print("Tap sobre el sitio turistico ${sitiosTuristicos[index]}");
               showDialog(
                context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Sitio Turistico N ${index+1}'),
                    content: Text('${sitiosTuristicos[index]}'),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                       child: const Text('Cerrar')
                       )
                    ],
                  );
                });
               },
             ),
           ); 
         },
       ),

       //ListView.separated(
       //  itemCount: SitiosTuristicos.length,
       //  separatorBuilder: (BuildContext context, int index) {
       //    return const Divider() ;
       //  },
       //  itemBuilder: (BuildContext context, int index) {
       //    return ListTile(
       //      title: Text(' ${SitiosTuristicos[index]}'),
       //      subtitle: Text('Maravilla # ${index+1}'),
       //      leading: const Icon(Icons.add_location_alt),
       //    );
       //  },
       //),
      ),
    );
  }
}


       //ListView.separated(
       //  itemCount: SitiosTuristicos.length,
       //  separatorBuilder: (BuildContext context, int index) {
       //    return const Divider() ;
       //  },
       //  itemBuilder: (BuildContext context, int index) {
       //    return ListTile(
       //      title: Text(' ${SitiosTuristicos[index]}'),
       //      subtitle: Text('Maravilla # ${index+1}'),
       //      leading: const Icon(Icons.add_location_alt),
       //    );
       //  },
       //),
  

 List<String> sitiosTuristicos = [
    "Torre Eiffel, Francia",
    "Gran Muralla China, China",
    "Machu Picchu, Perú",
    "Coliseo, Italia",
    "Taj Mahal, India",
    "Estatua de la Libertad, EE. UU.",
    "Sagrada Familia, España",
    "Cataratas del Iguazú, Argentina/Brasil",
    "Santuario de Machu Picchu, Perú",
    "Stonehenge, Inglaterra",
    "Plaza Mayor, España",
    "Catedral de Notre-Dame, Francia",
    "Palacio de Buckingham, Inglaterra",
    "Times Square, EE. UU.",
    "La Alhambra, España",
    "Piramides de Giza, Egipto",
    "Big Ben, Inglaterra",
    "Capilla Sixtina, Italia",
    "Estatua de Cristo Redentor, Brasil",
    "Venecia, Italia",
    "Gran Cañón, EE. UU.",
    "Parque Nacional Yellowstone, EE. UU.",
    "Montañas Rocosas, Canadá",
    "Siena, Italia",
    "Playa de Bondi, Australia",
    "Cascadas de Yosemite, EE. UU.",
    "Catedral de San Basilio, Rusia",
    "Acropolis, Grecia",
    "Burj Khalifa, Emiratos Árabes Unidos",
    "Playa de Cancún, México",
    "Cueva de los Tayos, Ecuador",
    "Angkor Wat, Camboya",
    "Murallas de Ávila, España",
    "Puerto de Santorini, Grecia",
    "Islas Galápagos, Ecuador",
    "Playa de Kuta, Indonesia",
    "Palacio de Versalles, Francia",
    "Isla de Pascua, Chile",
    "Parque Nacional Torres del Paine, Chile",
    "Catedral de San Pedro, Italia",
    "Cueva de Lascaux, Francia",
    "Fjords de Noruega",
    "Castillo de Neuschwanstein, Alemania",
    "Mercado de Marrakech, Marruecos",
    "Isla de Bora Bora, Polinesia Francesa",
    "Monumento a Lincoln, EE. UU.",
    "Museo del Louvre, Francia",
    "Isla de Bali, Indonesia",
    "Palacio Real de Bruselas, Bélgica",
    "El Louvre, Francia",
    "Cascadas de Niagara, EE. UU./Canadá",
    "Bahía de Ha Long, Vietnam",
    "Kilimanjaro, Tanzania",
    "Castillo de Edimburgo, Escocia",
    "Plaza de San Marcos, Italia",
    "Parque Nacional de los Glaciares, EE. UU.",
    "Centro Histórico de Ciudad de México, México",
    "Isla de Santorini, Grecia",
    "Catedral de Santa Sofía, Turquía",
    "Mercado de los Pescados, Japón",
    "Laguna Colorada, Bolivia",
    "Cascada de Gullfoss, Islandia",
    "Palacio de Topkapi, Turquía",
    "Cascadas de Plitvice, Croacia",
    "Ruinas de Petra, Jordania",
    "Monumento a la Independencia, México",
    "Arcos del Triunfo, Francia",
    "Museo Británico, Inglaterra",
    "Ciudad Prohibida, China",
    "El Burj Al Arab, Emiratos Árabes Unidos",
    "Muro de Berlín, Alemania",
    "Torre de Pisa, Italia",
    "Museo del Prado, España",
    "Ruinas de Chichen Itzá, México",
    "Cañón del Antílope, EE. UU.",
    "Estadio Azteca, México",
    "Parque Nacional Kruger, Sudáfrica",
    "Catedral de Milán, Italia",
    "El Coliseo, Italia",
    "Caminito, Argentina",
    "Parque Güell, España",
    "Cascadas de la Selva Negra, Alemania",
    "Monumento a la Paz, Japón",
    "Oasis de Huacachina, Perú",
    "Playas de Copacabana, Brasil",
    "Isla de Cozumel, México",
    "Río Amazonas, Sudamérica",
    "Monte Everest, Nepal",
    "Laguna de los Tres, Argentina",
    "Catedral de San Luis, EE. UU.",
    "Parque Nacional de Banff, Canadá",
    "Pico de Orizaba, México",
    "Plaza de la Ciudad Vieja, República Checa",
    "Monumento a la Revolución, México",
    "Parque Nacional Zion, EE. UU.",
  ];