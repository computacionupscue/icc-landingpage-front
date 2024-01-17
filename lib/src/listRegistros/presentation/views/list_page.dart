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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: re.hp(7)),
          child: Text("Lista de Registros",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.primaryBlue)),
        ),
        Center(
          child: FutureBuilder(
              future: getEstudiante(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  List? estudiantes = snapshot.data;
                  return DataTable(
                    columns: const [
                      DataColumn(
                        label: Text('Nombre'),
                      ),
                      DataColumn(
                        label: Text('Apellido'),
                      ),
                      DataColumn(label: Text('Correo')),
                      DataColumn(label: Text('Cedula')),
                      DataColumn(label: Text('Institucion')),
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
      ],
    );
  }
}