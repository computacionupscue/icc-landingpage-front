import 'dart:convert';
import 'dart:io';
import 'dart:html' as html;
import 'dart:typed_data';
import 'package:csv/csv.dart';
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
                await _generateCSV(data);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
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
            child: const Text('Generar CSV'),
          ),
        ),
      ],
    );
  }
}

Future<void> _generateCSV(List<List<dynamic>> data) async {
  final List<List<dynamic>> csvData = List.from(data);

  String csv = ListToCsvConverter().convert(csvData);

  // Crea una URL de objeto para el contenido del CSV
  final blob = html.Blob([Uint8List.fromList(utf8.encode(csv))]);
  final url = html.Url.createObjectUrlFromBlob(blob);

  // Crea un enlace y haz clic en él para iniciar la descarga
  final anchor = html.AnchorElement(href: url)
    ..target = 'web_browser'
    ..download = 'registros.csv';
  html.document.body!.children.add(anchor);
  anchor.click();

  // Libera la URL del objeto después de la descarga
  html.Url.revokeObjectUrl(url);
}
