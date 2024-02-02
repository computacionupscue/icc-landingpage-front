import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/listRegistros/services/firebase_service.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Registros extends StatelessWidget {
  const Registros({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> data = [
      ['Nombre', 'Apellido', 'Correo', 'Cedula', 'Institucion']
    ];
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: re.hp(7)),
          child: Text(
            "Lista de Registros",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.primaryBlue),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: re.hp(5)),
          child: FutureBuilder(
              future: getEstudiante(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  List? estudiantes = snapshot.data;

                  for (var estudiante in estudiantes!) {
                    data.add([
                      estudiante['nombre'] ?? '',
                      estudiante['apellido'] ?? '',
                      estudiante['correo'] ?? '',
                      estudiante['cedula'] ?? '',
                      estudiante['inst'] ?? '',
                    ]);
                  }
                  return DataTable(
                    headingRowColor: MaterialStateColor.resolveWith(
                        (states) => AppColors.primaryBlueMaterial),
                    dataRowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white),
                    dataTextStyle: const TextStyle(fontSize: 16.0),
                    columns: const [
                      DataColumn(
                        label: Text(
                          'Nombre',
                          style: TextStyle(
                            color: Colors
                                .white, // Cambia el color a tu preferencia
                            fontSize:
                                16.0, // Puedes ajustar otros estilos según tus necesidades
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Apellido',
                          style: TextStyle(
                            color: Colors
                                .white, // Cambia el color a tu preferencia
                            fontSize:
                                16.0, // Puedes ajustar otros estilos según tus necesidades
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                          label: Text(
                        'Correo',
                        style: TextStyle(
                          color:
                              Colors.white, // Cambia el color a tu preferencia
                          fontSize:
                              16.0, // Puedes ajustar otros estilos según tus necesidades
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        'Cedula',
                        style: TextStyle(
                          color:
                              Colors.white, // Cambia el color a tu preferencia
                          fontSize:
                              16.0, // Puedes ajustar otros estilos según tus necesidades
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        'Institucion',
                        style: TextStyle(
                          color:
                              Colors.white, // Cambia el color a tu preferencia
                          fontSize:
                              16.0, // Puedes ajustar otros estilos según tus necesidades
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ],
                    rows: estudiantes.map((estudiante) {
                      return DataRow(
                        cells: [
                          DataCell(Text(estudiante['nombre'] ?? '')),
                          DataCell(Text(estudiante['apellido'] ?? '')),
                          DataCell(Text(estudiante['correo'] ?? '')),
                          DataCell(Text(estudiante['cedula'] ?? '')),
                          DataCell(Text(estudiante['inst'] ?? '')),
                        ],
                      );
                    }).toList(),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: re.hp(5)),
          child: ElevatedButton(
            onPressed: () async {
              try {
                //await _generateCSV(data);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Archivo CSV generado con éxito.'),
                  ),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error al generar el archivo CSV: $e'),
                  ),
                );
              }
            },
            child: Text('Generar CSV'),
          ),
        ),
      ],
    );
  }
}

// Future<void> _generateCSV() async {
//   List estudiantes = await getEstudiante();

//   final String documentsDir = PlatformDetector.isWeb
//       ? '' // En el caso de web, puedes dejarlo en blanco o proporcionar la ruta adecuada
//       : (await getApplicationDocumentsDirectory()).path;

//   final String path = '$documentsDir/estudiantes.csv';

//   // Abre el archivo en modo escritura
//   final File file = File(path);
//   IOSink sink = file.openWrite();

//   // Escribe la cabecera del CSV
//   sink.write('Nombre,Apellido,Correo,Cedula,Institucion\n');

//   // Escribe los datos de cada estudiante
//   for (var estudiante in estudiantes) {
//     sink.write(
//       '${estudiante['nombre'] ?? ''},${estudiante['apellido'] ?? ''},${estudiante['correo'] ?? ''},${estudiante['cedula'] ?? ''},${estudiante['inst'] ?? ''}\n',
//     );
//   }

//   // Cierra el archivo
//   await sink.flush();
//   await sink.close();

//   print(path);
// }
