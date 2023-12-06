import 'package:flutter/material.dart';
import 'package:landing_page/src/shared/malla_box.dart';
import 'package:landing_page/src/shared/responsive.dart';

class MallaPage extends StatelessWidget {
  const MallaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Primer Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Algebra Lineal',
                      h1: 64,
                      h2: 0,
                      h3: 96,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Calculo Diferencial',
                      h1: 96,
                      h2: 0,
                      h3: 144,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Programacion',
                      h1: 64,
                      h2: 32,
                      h3: 64,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Antropologia\nFilosofico-\nTeologia',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Comuniacion\nOral y Escrita',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Segundo Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Calculo Integral',
                      h1: 64,
                      h2: 0,
                      h3: 96,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Programacion\nOrientada a\nObjetos',
                      h1: 80,
                      h2: 48,
                      h3: 72,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Estructura de\nDatos',
                      h1: 64,
                      h2: 32,
                      h3: 64,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Electronica',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Etica',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Tercer Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Ecuaciones\nDiferenciales',
                      h1: 64,
                      h2: 0,
                      h3: 96,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Programacion\nAplicada',
                      h1: 80,
                      h2: 48,
                      h3: 72,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Electronica',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Fundamentos de\nSistemas\nOperativos',
                      h1: 64,
                      h2: 32,
                      h3: 64,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Vida y\nTrascendencia',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Cuarto Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Metodos\nNumerios',
                      h1: 64,
                      h2: 0,
                      h3: 96,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Fundamentos de\nBase de Datos',
                      h1: 45,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Redes de\nComputadoras l',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Arquitectura del\nComputador',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Administracion de\nSistemas\nOperativos',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Pensamiento Social\nde la Iglesia',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Quinto Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Probabilidad y\nEstadisticas',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Gestion de\nBase de Datos',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'ITINERARIO',
                      h1: 64,
                      h2: 32,
                      h3: 64,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Redes de\nComputadoras ll',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Sistemas\nEmbebidos',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Pensamiento\nCritico',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Sexto Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Analisis\nMultivariado y\nModelos\nEstocasticos',
                      h1: 48,
                      h2: 16,
                      h3: 56,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Inteligencia\nArtificial',
                      h1: 64,
                      h2: 32,
                      h3: 64,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'ITINERARIO',
                      h1: 64,
                      h2: 48,
                      h3: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Analisis y Diseño\nde Sistemas',
                      h1: 64,
                      h2: 48,
                      h3: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Practicas de Servicio\nComunitario',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text("Septimo Nivel",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Vision por\nComputador',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Aprendizaje\nAutomatico',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Ingenieria de\nSoftware',
                      h1: 64,
                      h2: 0,
                      h3: 96,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(3.7)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(1.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Gestion\nEmpresarial',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(3.7)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(1.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Practicas Pre\nProfesionales',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Octavo Nivel",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Computacion\nParalela',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Mineria de\nDatos',
                      h1: 48,
                      h2: 48,
                      h3: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(8),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Seguridad de la\nInformacion',
                      h1: 64,
                      h2: 64,
                      h3: 32,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(3.7)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(1.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Proyectos',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(3.7)),
                    width: re.hp(15), // Ancho de la imagen
                    height: re.hp(1.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(2.5)),
                    child: MallaBox(
                      re: re,
                      titulo: 'Integracion\nCurricular',
                      h1: 32,
                      h2: 0,
                      h3: 48,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
