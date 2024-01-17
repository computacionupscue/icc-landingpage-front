import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/listProyectos/services/proyecto_service.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Proyectos extends StatelessWidget {
  const Proyectos({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: re.hp(7)),
          child: Text("Proyectos",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.primaryBlue)),
        ),
        Center(
          child: FutureBuilder(
              future: getProyecto(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  List? proyectos = snapshot.data;
                  return DataTable(
                    columns: const [
                      DataColumn(
                        label: Text('Nombre'),
                      ),
                      DataColumn(
                        label: Text('Descripcion'),
                      ),
                      DataColumn(label: Text('Grupo')),
                      DataColumn(label: Text('Integrantes')),
                    ],
                    rows: proyectos!.map((proyecto) {
                      String integrantesStr =
                          (proyecto['integrantes'] as List?)
                                  ?.join(', ') ??
                              '';
                      return DataRow(
                        cells: [
                          DataCell(Text(proyecto['nombre'] ?? '')),
                          DataCell(Text(proyecto['descripcion'] ?? '')),
                          DataCell(Text(proyecto['grupo'] ?? '')),
                          DataCell(Text(integrantesStr)),
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
      ],
    );
  }
}