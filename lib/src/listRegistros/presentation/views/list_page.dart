import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/listRegistros/services/firebase_service.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

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
                    rows: estudiantes!.map((estudiante) {
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
        ElevatedButton(
          onPressed: () => _generateCSV(data),
          child: Text('Generar CSV'),
        ),
      ],
    );
  }
}

Future<void> _generateCSV(List<List<dynamic>> data) async {
  String csv = const ListToCsvConverter().convert(data);

  final Directory directory = await getApplicationDocumentsDirectory();
  final String path = '${directory.path}/estudiantes.csv';

  await File(path).writeAsString(csv);

  print(path);

  // showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('CSV generado'),
  //         content: Text('El archivo CSV se ha guardado en: $path'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: Text('Cerrar'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
}
