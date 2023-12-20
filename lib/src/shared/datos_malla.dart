import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/responsive.dart';

class MyExpansionTileList extends StatelessWidget {
  String nivel;

  MyExpansionTileList({super.key, required this.nivel});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    Map<String, dynamic> jsonData1 = json.decode(nivel);
    return Container(
      margin:
          EdgeInsets.only(right: re.hp(8), top: re.hp(0.5), bottom: re.hp(0.5)),
      width: re.hp(30),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Color del borde
          width: 0.5, // Ancho del borde
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        //tilePadding: EdgeInsets.zero,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              jsonData1['nombre'],
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        initiallyExpanded: true,
        children: [
          for (var materia in jsonData1['materias'])
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black, // Color del borde vertical superior
                    width: 0.5, // Ancho del borde vertical superior
                  ),
                ),
              ),
              height: re.hp(16.15),
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
                                  .copyWith(),
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
                                color: Colors.black, // Color del borde
                                width: 0.5, // Ancho del borde
                              ),
                            ),
                            child: Center(
                                child: Text(
                              '${materia['horas_cd']}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(),
                              textAlign: TextAlign.center,
                            )),
                          ),
                          Container(
                            width: re.hp(5),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color:
                                      Colors.black, // Color del borde izquierdo
                                  width: 0.5, // Ancho del borde izquierdo
                                ),
                                right: BorderSide(
                                  color:
                                      Colors.black, // Color del borde derecho
                                  width: 0.5, // Ancho del borde derecho
                                ),
                                bottom: BorderSide(
                                  color:
                                      Colors.black, // Color del borde inferior
                                  width: 0.5, // Ancho del borde inferior
                                ),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              '${materia['horas_pe']}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(),
                              textAlign: TextAlign.center,
                            )),
                          ),
                          Container(
                              width: re.hp(5),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors
                                        .black, // Color del borde izquierdo
                                    width: 0.5, // Ancho del borde izquierdo
                                  ),
                                  right: BorderSide(
                                    color:
                                        Colors.black, // Color del borde derecho
                                    width: 0.5, // Ancho del borde derecho
                                  ),
                                  bottom: BorderSide(
                                    color: Colors
                                        .black, // Color del borde inferior
                                    width: 0.5, // Ancho del borde inferior
                                  ),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                '${materia['horas_a']}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(),
                                textAlign: TextAlign.center,
                              ))),
                        ],
                      )),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
