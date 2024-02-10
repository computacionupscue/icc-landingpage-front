import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class MyExpansionTileList extends StatelessWidget {
  String nivel;
  Color boxColor;
  bool expanded;

  MyExpansionTileList(
      {super.key,
      required this.nivel,
      required this.boxColor,
      required this.expanded});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    Map<String, dynamic> jsonData1 = json.decode(nivel);
    // return Container(
    //   margin:
    //       EdgeInsets.only(right: re.hp(8), top: re.hp(0.5), bottom: re.hp(0.5)),
    //   width: re.hp(30),
    //   decoration: BoxDecoration(
    //     // color: const Color.fromARGB(255, 187, 187, 187),
    //     border: Border.all(
    //       color: Colors.black, // Color del borde
    //       width: 0.5, // Ancho del borde
    //     ),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    // return Card(
    //   clipBehavior: Clip.antiAlias,
    //   shape: RoundedRectangleBorder(
    //     side: BorderSide(color: AppColors.secondaryBlue, width: 1),
    //     borderRadius: BorderRadius.circular(AppLayoutConst.cardBorderRadius),
    //   ),
    //   elevation: 5.0,
    // child:
    return Container(
      margin:
          EdgeInsets.only(right: re.hp(8), top: re.hp(0.5), bottom: re.hp(0.5)),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.secondaryBlue, width: 1),
          borderRadius: BorderRadius.circular(AppLayoutConst.cardBorderRadius),
        ),
        elevation: 5.0,
        child: SizedBox(
          width: re.hp(30),
          child: ExpansionTile(
            title: ListTile(
              // leading: Container(),

              title: Text(
                jsonData1['nombre'],
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            initiallyExpanded: expanded,
            children: [
              for (var materia in jsonData1['materias'])
                Tooltip(
                  message:
                      "Pre-requisito: ${materia['requisito']}\nCodigo: ${materia['codigo']}",
                  showDuration: const Duration(
                      milliseconds:
                          1), // Duración de la animación de desaparición
                  child: Container(
                    decoration: BoxDecoration(
                      color: (materia['nombre'] == 'Integración Curricular')
                          ? const Color.fromARGB(255, 17, 94, 20)
                          : boxColor,
                      border: const Border(
                        top: BorderSide(
                          color:
                              Colors.white, // Color del borde vertical superior
                          width: 0.5, // Ancho del borde vertical superior
                        ),
                      ),
                    ),
                    height: re.hp(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                            title: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: re.hp(2)),
                                  child: Text(
                                    materia['nombre'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: re.hp(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    '${materia['horas_cd']}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )),
                                ),
                                Container(
                                  width: re.hp(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white, // Color del borde
                                      width: 1, // Ancho del borde
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    '${materia['horas_pe']}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )),
                                ),
                                Container(
                                    width: re.hp(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white, // Color del borde
                                        width: 1, // Ancho del borde
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      '${materia['horas_a']}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ))),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
            ],
            // ),
          ),
        ),
      ),
    );
  }
}
