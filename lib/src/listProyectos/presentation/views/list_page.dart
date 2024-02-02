import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/addProyectos/services/addproyecto_service.dart';
import 'package:landing_page/src/listProyectos/services/delete_service.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Proyectos extends StatefulWidget {
  const Proyectos({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  State<Proyectos> createState() => _ProyectosState();
}

class _ProyectosState extends State<Proyectos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: widget.re.hp(7)),
          child: Text(
            "Lista de Proyectos",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.primaryBlue),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: widget.re.hp(5)),
          padding: EdgeInsets.only(bottom: widget.re.hp(10)),
          child: FutureBuilder(
            future: getProyecto(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List? proyectos = snapshot.data;
                return DataTable(
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => AppColors.primaryBlueMaterial),
                  dataRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                  dataTextStyle: const TextStyle(fontSize: 16.0),
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Nombre',
                        style: TextStyle(
                          color:
                              Colors.white, // Cambia el color a tu preferencia
                          fontSize:
                              16.0, // Puedes ajustar otros estilos según tus necesidades
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Descripcion',
                        style: TextStyle(
                          color:
                              Colors.white, // Cambia el color a tu preferencia
                          fontSize:
                              16.0, // Puedes ajustar otros estilos según tus necesidades
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                        label: Text(
                      'Integrantes',
                      style: TextStyle(
                        color: Colors.white, // Cambia el color a tu preferencia
                        fontSize:
                            16.0, // Puedes ajustar otros estilos según tus necesidades
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    DataColumn(
                        label: Text(
                      'Grupo',
                      style: TextStyle(
                        color: Colors.white, // Cambia el color a tu preferencia
                        fontSize:
                            16.0, // Puedes ajustar otros estilos según tus necesidades
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    DataColumn(
                        label: Text(
                      'Imagen',
                      style: TextStyle(
                        color: Colors.white, // Cambia el color a tu preferencia
                        fontSize:
                            16.0, // Puedes ajustar otros estilos según tus necesidades
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    DataColumn(
                        label: Text(
                      'Modificar',
                      style: TextStyle(
                        color: Colors.white, // Cambia el color a tu preferencia
                        fontSize:
                            16.0, // Puedes ajustar otros estilos según tus necesidades
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ],
                  rows: proyectos!.map((proyecto) {
                    String uid = proyecto['uid'] ?? '';
                    return DataRow(
                      cells: [
                        DataCell(SizedBox(
                          child: Text(
                            proyecto['nombre'] ?? '',
                          ),
                        )),
                        DataCell(SizedBox(
                          child: Text(
                            proyecto['descripcion'] ?? '',
                          ),
                        )),
                        DataCell(SizedBox(
                          child: Text(
                            proyecto['integrantes'] ?? '',
                          ),
                        )),
                        DataCell(SizedBox(
                          child: Text(
                            proyecto['grupo'] ?? '',
                          ),
                        )),
                        DataCell(SizedBox(
                          child: Image.network(
                            proyecto['imagen'] ?? '',
                            width: 100, // Ajusta según tus necesidades
                            height: 100, // Ajusta según tus necesidades
                            fit: BoxFit.cover,
                          ),
                        )),
                        DataCell(SizedBox(
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  GoRouter.of(context).goNamed(
                                      PAGES.updProyectos.pageName,
                                      pathParameters: {
                                        "nombre": proyecto['nombre'] ?? '',
                                        "descripcion":
                                            proyecto['descripcion'] ?? '',
                                        "integrantes":
                                            proyecto['integrantes'] ?? '',
                                        "grupo": proyecto['grupo'] ?? '',
                                        "imagen": proyecto['imagen'] ?? '',
                                        "uid": proyecto["uid"] ?? ''
                                      });
                                },
                                child: Text('Editar'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  bool confirmacion = await showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text('Confirmar eliminación'),
                                      content: Text(
                                          '¿Estás seguro de que quieres eliminar este proyecto?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context,
                                                false); // No confirmado
                                          },
                                          child: Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context, true); // Confirmado
                                          },
                                          child: Text('Eliminar'),
                                        ),
                                      ],
                                    ),
                                  );
                                  if (confirmacion) {
                                    await deleteProyecto(uid);

                                    // Actualiza la lista de proyectos después de eliminar
                                    setState(() {});
                                  }
                                },
                                child: Text('Eliminar'),
                              ),
                            ],
                          ),
                        )),
                      ],
                    );
                  }).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
