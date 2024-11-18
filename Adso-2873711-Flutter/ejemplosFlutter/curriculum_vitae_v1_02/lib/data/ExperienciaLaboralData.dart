import 'package:flutter/material.dart';

  List<Map<String, dynamic>> experienciasLaborales = [
    {
      "id": 1,
      "titulo": "Desarrollador Frontend",
      "fechaInicio": "2020-01",
      "fechaFin": "2022-06",
      "categoria": "Frontend",
      "colorCategoria": Colors.blue,
      "funciones": "Desarrollo de interfaces de usuario atractivas y responsivas.",
      "iconoCategoria": Icons.code,
    },
    {
      "id": 2,
      "titulo": "Desarrollador Backend",
      "fechaInicio": "2018-05",
      "fechaFin": "2019-12",
      "categoria": "Backend",
      "colorCategoria": Colors.green,
      "funciones": "Diseño y mantenimiento de APIs REST y servicios backend escalables.",
      "iconoCategoria": Icons.settings,
    },
    {
      "id": 3,
      "titulo": "Ingeniero de Software",
      "fechaInicio": "2017-03",
      "fechaFin": "2018-04",
      "categoria": "Fullstack",
      "colorCategoria": Colors.purple,
      "funciones": "Participación en proyectos de ciclo completo desde la ideación hasta la implementación final, integrando tareas de frontend y backend.",
      "iconoCategoria": Icons.developer_mode,
    },
    {
      "id": 4,
      "titulo": "Desarrollador Mobile",
      "fechaInicio": "2022-07",
      "fechaFin": "2025-08",
      "categoria": "Mobile",
      "colorCategoria": Colors.orange,
      "funciones": "Desarrollo de aplicaciones móviles nativas y multiplataforma utilizando Flutter.",
      "iconoCategoria": Icons.phone_android,
    },
    {
      "id": 5,
      "titulo": "DevOps Engineer",
      "fechaInicio": "2019-01",
      "fechaFin": "2021-12",
      "categoria": "DevOps",
      "colorCategoria": Colors.teal,
      "funciones": "Automatización de procesos de despliegue, configuración de CI/CD y monitoreo de sistemas.",
      "iconoCategoria": Icons.cloud,
    },
    {
      "id": 6,
      "titulo": "Administrador de Base de Datos",
      "fechaInicio": "2016-06",
      "fechaFin": "2018-02",
      "categoria": "Database",
      "colorCategoria": Colors.brown,
      "funciones": "Gestión y optimización de bases de datos relacionales y no relacionales.",
      "iconoCategoria": Icons.storage,
    },
    {
      "id": 7,
      "titulo": "Data Scientist",
      "fechaInicio": "2021-03",
      "fechaFin": "2023-05",
      "categoria": "Data Science",
      "colorCategoria": Colors.lightGreen,
      "funciones": "Análisis de grandes volúmenes de datos y desarrollo de modelos predictivos.",
      "iconoCategoria": Icons.analytics,
    },
    {
      "id": 8,
      "titulo": "Diseñador UX/UI",
      "fechaInicio": "2015-01",
      "fechaFin": "2016-12",
      "categoria": "UX/UI",
      "colorCategoria": Colors.pink,
      "funciones": "Creación de prototipos interactivos y diseño de experiencias de usuario intuitivas.",
      "iconoCategoria": Icons.design_services,
    },
    {
      "id": 9,
      "titulo": "Especialista en Seguridad",
      "fechaInicio": "2020-09",
      "fechaFin": "2022-11",
      "categoria": "Seguridad",
      "colorCategoria": Colors.red,
      "funciones": "Implementación de medidas de ciberseguridad y gestión de incidentes.",
      "iconoCategoria": Icons.security,
    },
    {
      "id": 10,
      "titulo": "Machine Learning Engineer",
      "fechaInicio": "2021-04",
      "fechaFin": "2023-07",
      "categoria": "IA",
      "colorCategoria": Colors.cyan,
      "funciones": "Desarrollo y despliegue de modelos de aprendizaje automático para aplicaciones específicas.",
      "iconoCategoria": Icons.lightbulb,
    },
    {
      "id": 11,
      "titulo": "Administrador de Redes",
      "fechaInicio": "2014-01",
      "fechaFin": "2015-12",
      "categoria": "Redes",
      "colorCategoria": Colors.indigo,
      "funciones": "Mantenimiento de la infraestructura de redes y solución de problemas de conectividad.",
      "iconoCategoria": Icons.router,
    },
    {
      "id": 12,
      "titulo": "Especialista en QA",
      "fechaInicio": "2019-06",
      "fechaFin": "2021-09",
      "categoria": "QA",
      "colorCategoria": Colors.lime,
      "funciones": "Pruebas funcionales y no funcionales para garantizar la calidad del software.",
      "iconoCategoria": Icons.bug_report,
    },
    {
      "id": 13,
      "titulo": "Arquitecto de Software",
      "fechaInicio": "2020-03",
      "fechaFin": "Presente",
      "categoria": "Arquitectura",
      "colorCategoria": Colors.deepPurple,
      "funciones": "Diseño de arquitecturas escalables y robustas para sistemas complejos.",
      "iconoCategoria": Icons.architecture,
    },
    {
      "id": 14,
      "titulo": "Administrador de Sistemas",
      "fechaInicio": "2017-01",
      "fechaFin": "2019-04",
      "categoria": "Sistemas",
      "colorCategoria": Colors.grey,
      "funciones": "Mantenimiento y administración de servidores y sistemas operativos.",
      "iconoCategoria": Icons.computer,
    },
    {
      "id": 15,
      "titulo": "Desarrollador Web",
      "fechaInicio": "2013-01",
      "fechaFin": "2014-12",
      "categoria": "Web",
      "colorCategoria": Colors.amber,
      "funciones": "Creación de sitios web dinámicos utilizando tecnologías modernas.",
      "iconoCategoria": Icons.web,
    },
    {
      "id": 16,
      "titulo": "Especialista en Big Data",
      "fechaInicio": "2019-05",
      "fechaFin": "2021-10",
      "categoria": "Big Data",
      "colorCategoria": Colors.deepOrange,
      "funciones": "Procesamiento y análisis de datos a gran escala.",
      "iconoCategoria": Icons.dataset,
    },
    {
      "id": 17,
      "titulo": "Game Developer",
      "fechaInicio": "2015-06",
      "fechaFin": "2018-08",
      "categoria": "Gaming",
      "colorCategoria": Colors.lightBlue,
      "funciones": "Diseño y desarrollo de mecánicas de juegos y gráficos interactivos.",
      "iconoCategoria": Icons.games,
    },
    {
      "id": 18,
      "titulo": "Especialista en Cloud",
      "fechaInicio": "2018-01",
      "fechaFin": "2020-12",
      "categoria": "Cloud",
      "colorCategoria": Colors.blueGrey,
      "funciones": "Gestión de servicios en la nube y diseño de arquitecturas cloud.",
      "iconoCategoria": Icons.cloud_queue,
    },
    {
      "id": 19,
      "titulo": "Consultor Tecnológico",
      "fechaInicio": "2016-02",
      "fechaFin": "2017-12",
      "categoria": "Consultoría",
      "colorCategoria": Colors.yellow,
      "funciones": "Asesoramiento estratégico en la adopción de tecnologías innovadoras.",
      "iconoCategoria": Icons.business,
    },
    {
      "id": 20,
      "titulo": "Desarrollador AR/VR",
      "fechaInicio": "2021-11",
      "fechaFin": "2024-12",
      "categoria": "Realidad Virtual",
      "colorCategoria": Colors.pinkAccent,
      "funciones": "Creación de experiencias inmersivas utilizando tecnologías AR y VR.",
      "iconoCategoria": Icons.view_in_ar,
    },
  ];

  