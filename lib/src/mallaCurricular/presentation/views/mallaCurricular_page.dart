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
        "codigo": "C1"
      },
      {
        "nombre": "Cálculo Diferencial",
        "horas_cd": 96,
        "horas_pe": 0,
        "horas_a": 144,
        "codigo": "C1"
      },
      {
        "nombre": "Programación",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "C1"
      },
      {
        "nombre": "Antropología Filosófico-Teológica",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
      },
      {
        "nombre": "Introducción a la Física para Ciencias de la Computación",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "C1"
      },
      {
        "nombre": "Comuniacion Oral y Escrita",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Programación Orientada a Objetos",
        "horas_cd": 80,
        "horas_pe": 48,
        "horas_a": 72,
        "codigo": "C1"
      },
      {
        "nombre": "Estructura de Datos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "C1"
      },
      {
        "nombre": "Electrotecnia",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "Física para Ciencias de la Computación",
        "horas_cd": 16,
        "horas_pe": 16,
        "horas_a": 8,
        "codigo": "C1"
      },
      {
        "nombre": "Ética",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Programación Aplicada",
        "horas_cd": 80,
        "horas_pe": 48,
        "horas_a": 72,
        "codigo": "C1"
      },
      {
        "nombre": "Electrónica",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "Fundamentos de Sistemas Operativos",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "C1"
      },
      {
        "nombre": "Vida y Trascendencia",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Fundamentos de Base de Datos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "Redes de Computadoras l",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "Administración de Sistemas Operativos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "Pensamiento Social de la Iglesia",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Gestión de Base de Datos",
        "horas_cd": 48,
        "horas_pe": 16,
        "horas_a": 56,
        "codigo": "C1"
      },
      {
        "nombre": "ITINERARIO",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "C1"
      },
      {
        "nombre": "Redes de Computadoras ll",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "C1"
      },
      {
        "nombre": "Sistemas Embebidos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "C1"
      },
      {
        "nombre": "Pensamiento Crítico",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Inteligencia Artificial",
        "horas_cd": 64,
        "horas_pe": 32,
        "horas_a": 64,
        "codigo": "C1"
      },
      {
        "nombre": "ITINERARIO",
        "horas_cd": 64,
        "horas_pe": 48,
        "horas_a": 48,
        "codigo": "C1"
      },
      {
        "nombre": "Análisis y Diseño de Sistemas",
        "horas_cd": 64,
        "horas_pe": 48,
        "horas_a": 48,
        "codigo": "C1"
      },
      {
        "nombre": "Prácticas de Servicio Comunitario",
        "horas_cd": 0,
        "horas_pe": 120,
        "horas_a": 0,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Aprendizaje Automático",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "C1"
      },
      {
        "nombre": "Ingeniería de Software",
        "horas_cd": 64,
        "horas_pe": 0,
        "horas_a": 96,
        "codigo": "C1"
      },
      {
        "nombre": "Gestión Empresarial",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
      },
      {
        "nombre": "Prácticas Pre Profesionales",
        "horas_cd": 0,
        "horas_pe": 240,
        "horas_a": 0,
        "codigo": "C1"
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
        "codigo": "C1"
      },
      {
        "nombre": "Minería de Datos",
        "horas_cd": 48,
        "horas_pe": 48,
        "horas_a": 24,
        "codigo": "C1"
      },
      {
        "nombre": "Seguridad de la Información",
        "horas_cd": 64,
        "horas_pe": 64,
        "horas_a": 32,
        "codigo": "C1"
      },
      {
        "nombre": "Proyectos",
        "horas_cd": 32,
        "horas_pe": 0,
        "horas_a": 48,
        "codigo": "C1"
      },
      {
        "nombre": "Integración Curricular",
        "horas_cd": 0,
        "horas_pe": 240,
        "horas_a": 0,
        "codigo": "C1"
      }
    ]
  }
  ''';

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
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
                        MyExpansionTileList(nivel: n1),
                        MyExpansionTileList(nivel: n2),
                        MyExpansionTileList(nivel: n3),
                        MyExpansionTileList(nivel: n4),
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
                        MyExpansionTileList(nivel: n5),
                        MyExpansionTileList(nivel: n6),
                        MyExpansionTileList(nivel: n7),
                        MyExpansionTileList(nivel: n8),
                        // SizedBox(
                        //   width: re.hp(10),
                        // ),
                      ],
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
                            Text("1. Nombre de Asignatura",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("2. Horas de Aprendizaje Contacto\nDocente",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text(
                                "3. Horas de Aprendizaje Práctico\nExperimental",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                            SizedBox(
                              height: re.hp(0.5),
                            ),
                            Text("4. Horas de Aprendizaje Autónomo",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                                textAlign: TextAlign.start),
                          ],
                        )
                      ],
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
