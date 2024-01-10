import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/datos_malla.dart';
import 'package:landing_page/src/shared/responsive.dart';

class MallaPage extends StatelessWidget {
  const MallaPage({super.key});

  final String n1 = '''
  {
    "nombre": "Primer Nivel",
    "materias": [
      {
        "nombre": "Álgebra Lineal",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "01",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Cálculo Diferencial",
        "horas_cd": 96,
        "horas_pe": 0,
        "horas_a": 144,
        "codigo": "02",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Programación",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "03",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Antropología Filosófico-Teológica",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "04",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Introducción a la Física para Ciencias de la Computación",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "101",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Comuniacion Oral y Escrita",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "102",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n2 = '''
  {
    "nombre": "Segundo Nivel",
    "materias": [
      {
        "nombre": "Cálculo Integral",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "07",
        "requisito": "Álgebra Lineal - Cálculo Diferencial"
      },
      {
        "nombre": "Programación Orientada a Objetos",
        "horas_cd": 80,
        "horas_pe": 48,
        "horas_a": 72,
        "codigo": "08",
        "requisito": "Programación"
      },
      {
        "nombre": "Estructura de Datos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "104",
        "requisito": "Programación"
      },
      {
        "nombre": "Electrotecnia",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "09",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Física para Ciencias de la Computación",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "103",
        "requisito": "Introducción a la Física para Ciencias de la Computación"
      },
      {
        "nombre": "Ética",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "06",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n3 = '''
  {
    "nombre": "Tercer Nivel",
    "materias": [
      {
        "nombre": "Ecuaciones Diferenciales",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "12",
        "requisito": "Cálculo Integral"
      },
      {
        "nombre": "Programación Aplicada",
        "horas_cd": 80,
        "horas_pe": 48,
        "horas_a": 72,
        "codigo": "14",
        "requisito": "Programación Orientada a Objetos - Estructura de Datos"
      },
      {
        "nombre": "Electrónica",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "13",
        "requisito": "Electrotecnia"
      },
      {
        "nombre": "Fundamentos de Sistemas Operativos",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "15",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Vida y Trascendencia",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "11",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n4 = '''
  {
    "nombre": "Cuarto Nivel",
    "materias": [
      {
        "nombre": "Métodos Numerios",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "17",
        "requisito": "Ecuaciones Diferenciales"
      },
      {
        "nombre": "Fundamentos de Base de Datos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "21",
        "requisito": "Programación Aplicada"
      },
      {
        "nombre": "Redes de Computadoras l",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "19",
        "requisito": "Arquitectura del Computador"
      },
      {
        "nombre": "Arquitectura del Computador",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "18",
        "requisito": "Electrónica"
      },
      {
        "nombre": "Administración de Sistemas Operativos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "20",
        "requisito": "Fundamentos de Sistemas Operativos"
      },
      {
        "nombre": "Pensamiento Social de la Iglesia",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "16",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n5 = '''
  {
    "nombre": "Quinto Nivel",
    "materias": [
      {
        "nombre": "Probabilidad y Estadística",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "26",
        "requisito": "Métodos Numéricos"
      },
      {
        "nombre": "Gestión de Base de Datos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "24",
        "requisito": "Fundamentos de Base de Datos"
      },
      {
        "nombre": "ITINERARIO",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "27",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Redes de Computadoras ll",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "23",
        "requisito": "Redes de Computadoras I"
      },
      {
        "nombre": "Sistemas Embebidos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "25",
        "requisito": "Arquitectura del Computador"
      },
      {
        "nombre": "Pensamiento Crítico",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "22",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final n6 = '''
  {
    "nombre": "Sexto Nivel",
    "materias": [
      {
        "nombre": "Análisis Multivariado y Modelos Estocásticos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "29",
        "requisito": "Probabilidad y Estadística"
      },
      {
        "nombre": "Inteligencia Artificial",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "32",
        "requisito": "Sistemas Embebidos"
      },
      {
        "nombre": "ITINERARIO",
        "horas_cd": 64,
        "horas_pe": 48,
        "horas_a": 48,
        "codigo": "30",
        "requisito": "ITINERARIO"
      },
      {
        "nombre": "Análisis y Diseño de Sistemas",
        "horas_cd": 64,
        "horas_pe": 48,
        "horas_a": 48,
        "codigo": "31",
        "requisito": "Administración de Sistemas Operativos"
      },
      {
        "nombre": "Prácticas de Servicio Comunitario",
        "horas_cd": 0,
        "horas_pe": 120,
        "horas_a": 0,
        "codigo": "28",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n7 = '''
  {
    "nombre": "Septimo Nivel",
    "materias": [
      {
        "nombre": "Visión por Computador",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "36",
        "requisito": "Análisis Multivariado y Modelos Estocásticos - Inteligencia Artificial"
      },
      {
        "nombre": "Aprendizaje Automático",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "35",
        "requisito": "Análisis Multivariado y Modelos Estocásticos - Inteligencia Artificial"
      },
      {
        "nombre": "Ingeniería de Software",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "37",
        "requisito": "Análisis y Diseño de Sistemas"
      },
      {
        "nombre": "Gestión Empresarial",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "33",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Prácticas Pre Profesionales",
        "horas_cd": 0,
        "horas_pe": 240,
        "horas_a": 0,
        "codigo": "34",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  final String n8 = '''
  {
    "nombre": "Octavo Nivel",
    "materias": [
      {
        "nombre": "Computación Paralela",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "42",
        "requisito": "Visión por Computador - Aprendizaje Automático"
      },
      {
        "nombre": "Minería de Datos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "40",
        "requisito": "Visión por Computador - Aprendizaje Automático - Fundamentos de Base de Datos"
      },
      {
        "nombre": "Seguridad de la Información",
        "horas_cd": 64,
        "horas_pe": 64,
        "horas_a": 32,
        "codigo": "41",
        "requisito": "Ingeniería de Software"
      },
      {
        "nombre": "Proyectos",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "39",
        "requisito": "Ninguno"
      },
      {
        "nombre": "Integración Curricular",
        "horas_cd": 0,
        "horas_pe": 240,
        "horas_a": 0,
        "codigo": "38",
        "requisito": "Ninguno"
      }
    ]
  }
  ''';

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 1410)
            ? _DesktopModel(
                re: re,
                n1: n1,
                n2: n2,
                n3: n3,
                n4: n4,
                n5: n5,
                n6: n6,
                n7: n7,
                n8: n8)
            : _MobileModel(
                re: re,
                n1: n1,
                n2: n2,
                n3: n3,
                n4: n4,
                n5: n5,
                n6: n6,
                n7: n7,
                n8: n8);
      },
    );
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
    required this.n1,
    required this.n2,
    required this.n3,
    required this.n4,
    required this.n5,
    required this.n6,
    required this.n7,
    required this.n8,
  });

  final Responsive re;
  final String n1;
  final String n2;
  final String n3;
  final String n4;
  final String n5;
  final String n6;
  final String n7;
  final String n8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            SizedBox(height: re.hp(5)),
            Text("Malla Curricular",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.primaryBlue)),
            SizedBox(height: re.hp(5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n1,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                        MyExpansionTileList(
                            nivel: n2,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                        MyExpansionTileList(
                            nivel: n3,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                        MyExpansionTileList(
                            nivel: n4,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                        // SizedBox(
                        //   width: re.hp(10),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n5,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n6,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n7,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n8,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        // SizedBox(
                        //   width: re.hp(10),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: re.hp(33),
                              height: re.hp(28),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(re.hp(2)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 0, 78, 161),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Básica")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(re.hp(2)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 161, 0, 0),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Profesional")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(re.hp(2)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 17, 94, 20),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Integración Curricular")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: re.hp(2),
                                          right: re.hp(2),
                                          left: re.hp(2),
                                        ),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        child: const Icon(
                                          Icons.mouse_outlined,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: re.hp(2)),
                                        child: const Text("Pre-requisito"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: re.hp(2.5),
                        ),
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 1: SOFTWARE",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Programación y Plataformas Web",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Sistemas Distribuidos",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: re.hp(2.5),
                        ),
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 2: GESTIÓN DE SISTEMAS DE INFORMACIÓN",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Gestión de Procesos",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Administración de Proyectos y Gobierno de TI",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: re.hp(2.5),
                        ),
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 3: REDES",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Arquitectura y Gestión de Redes",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Redes Inalámbricas",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Resumen\nHoras",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: re.hp(5),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Contacto\nDocente",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2064",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Práctico\nExperimental",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "912",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Autónomo",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2184",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Práctricas pre\nprofesionale",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "240",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Prácticas de Servicio\nComunitario",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "120",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Integración Curricular",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "240",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Horas",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5760",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors
                                        .black, // Color del borde izquierdo
                                    width: 1, // Ancho del borde izquierdo
                                  ),
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1  Nombre de Asignatura",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("2  Horas de Aprendizaje\n Contacto Docente",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text(
                                "3  Horas de Aprendizaje\nPráctico Experimental",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("4  Horas de Aprendizaje\nAutónomo",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    )
                  ],
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
    required this.n1,
    required this.n2,
    required this.n3,
    required this.n4,
    required this.n5,
    required this.n6,
    required this.n7,
    required this.n8,
  });

  final Responsive re;
  final String n1;
  final String n2;
  final String n3;
  final String n4;
  final String n5;
  final String n6;
  final String n7;
  final String n8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            SizedBox(height: re.hp(5)),
            Text("Malla Curricular",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.primaryBlue)),
            SizedBox(height: re.hp(5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n1,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                        MyExpansionTileList(
                            nivel: n2,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: true),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n3,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n4,
                            boxColor: const Color.fromARGB(255, 0, 78, 161),
                            expanded: false),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n5,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n6,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: re.hp(8)),
                        MyExpansionTileList(
                            nivel: n7,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                        MyExpansionTileList(
                            nivel: n8,
                            boxColor: const Color.fromARGB(255, 161, 0, 0),
                            expanded: false),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(28),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: re.hp(2),
                                            right: re.hp(2),
                                            bottom: re.hp(2),
                                            left: re.hp(5)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 0, 78, 161),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Básica")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: re.hp(2),
                                            right: re.hp(2),
                                            bottom: re.hp(2),
                                            left: re.hp(5)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 161, 0, 0),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Profesional")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: re.hp(2),
                                            right: re.hp(2),
                                            bottom: re.hp(2),
                                            left: re.hp(5)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        // color: Colors.blue,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 17, 94, 20),
                                          border: Border.all(
                                            color:
                                                Colors.black, // Color del borde
                                            width: 1, // Ancho del borde
                                          ),
                                        ),
                                      ),
                                      const Text("Integración Curricular")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: re.hp(2), left: re.hp(5)),
                                        width: re.hp(5),
                                        height: re.hp(3),
                                        child: const Icon(
                                          Icons.mouse_outlined,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: re.hp(2)),
                                        child: const Text("Pre-requisito"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: re.hp(2.5),
                        ),
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 1: SOFTWARE",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Programación y Plataformas Web",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Sistemas Distribuidos",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   width: re.hp(2.5),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 2: GESTIÓN DE SISTEMAS DE INFORMACIÓN",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Gestión de Procesos",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Administración de Proyectos y Gobierno de TI",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: re.hp(2.5),
                        ),
                        Column(
                          children: [
                            Container(
                              width: re.hp(40),
                              height: re.hp(8),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.white, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ITINERARIO 3: REDES",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 5",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Arquitectura y Gestión de Redes",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: re.hp(2),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: re.hp(10),
                                  height: re.hp(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nivel 6",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: re.hp(2),
                                ),
                                Container(
                                  width: re.hp(28),
                                  height: re.hp(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color del borde
                                      width: 1,
                                    ),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Redes Inalámbricas",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Resumen\nHoras",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: re.hp(5),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Contacto\nDocente",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2064",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Práctico\nExperimental",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "912",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aprendizaje Autónomo",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2184",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Práctricas pre\nprofesionale",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "240",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Prácticas de Servicio\nComunitario",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "120",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Integración Curricular",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "240",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Horas",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: re.hp(25),
                          height: re.hp(4),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color:
                                    Colors.black, // Color del borde izquierdo
                                width: 1, // Ancho del borde izquierdo
                              ),
                              right: BorderSide(
                                color: Colors.black, // Color del borde derecho
                                width: 1, // Ancho del borde derecho
                              ),
                              bottom: BorderSide(
                                color: Colors.black, // Color del borde inferior
                                width: 1, // Ancho del borde inferior
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5760",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: re.hp(10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: re.hp(25),
                          height: re.hp(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Color del borde
                              width: 1, // Ancho del borde
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors
                                        .black, // Color del borde izquierdo
                                    width: 1, // Ancho del borde izquierdo
                                  ),
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: re.hp(8.33),
                              height: re.hp(4),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 1, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 1, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1  Nombre de Asignatura",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("2  Horas de Aprendizaje\nContacto Docente",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text(
                                "3  Horas de Aprendizaje\nPráctico Experimental",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("4  Horas de Aprendizaje\nAutónomo",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: re.hp(5),
                    )
                  ],
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}
