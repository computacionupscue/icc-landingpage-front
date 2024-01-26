import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/proyecto.dart';
import 'package:landing_page/src/shared/responsive.dart';

class ProyectosPage extends StatelessWidget {
  final CollectionReference _proyecto =
      FirebaseFirestore.instance.collection('proyecto');

  ProyectosPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
        body: StreamBuilder(
            stream: _proyecto.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot?> snapshots) {
              String nombre = "";
              String descripcion = "";
              String integrantes = "";
              String grupo = "";
              String imagen = "";
              String nombre2 = "";
              String descripcion2 = "";
              String integrantes2 = "";
              String grupo2 = "";
              String imagen2 = "";
              if (snapshots.hasData) {
                nombre = snapshots.data!.docs[0]['nombre'];
                descripcion = snapshots.data!.docs[0]['descripcion'];
                integrantes = snapshots.data!.docs[0]['integrantes'];
                grupo = snapshots.data!.docs[0]['grupo'];
                imagen = snapshots.data!.docs[0]['imagen'];
                nombre2 = snapshots.data!.docs[1]['nombre'];
                descripcion2 = snapshots.data!.docs[1]['descripcion'];
                integrantes2 = snapshots.data!.docs[1]['integrantes'];
                grupo2 = snapshots.data!.docs[1]['grupo'];
                imagen2 = snapshots.data!.docs[1]['imagen'];
              }
              return LayoutBuilder(
                builder: (_, constraints) {
                  return (constraints.maxWidth > 1400)
                      ? _DesktopModel(
                          re: re,
                          nombre: nombre,
                          descripcion: descripcion,
                          integrantes: integrantes,
                          grupo: grupo,
                          imagen: imagen,
                          nombre2: nombre2,
                          descripcion2: descripcion2,
                          integrantes2: integrantes2,
                          grupo2: grupo2,
                          imagen2: imagen2,
                        )
                      : _MobileModel(
                          re: re,
                          nombre: nombre,
                          descripcion: descripcion,
                          integrantes: integrantes,
                          grupo: grupo,
                          imagen: imagen,
                          nombre2: nombre2,
                          descripcion2: descripcion2,
                          integrantes2: integrantes2,
                          grupo2: grupo2,
                          imagen2: imagen2,
                        );
                },
              );
            }));
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
    required this.nombre,
    required this.descripcion,
    required this.integrantes,
    required this.grupo,
    required this.imagen,
    required this.nombre2,
    required this.descripcion2,
    required this.integrantes2,
    required this.grupo2,
    required this.imagen2,
  });

  final Responsive re;
  final String nombre;
  final String descripcion;
  final String integrantes;
  final String grupo;
  final String imagen;
  final String nombre2;
  final String descripcion2;
  final String integrantes2;
  final String grupo2;
  final String imagen2;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            MenuHome(re: re),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Proyecto(
                    re: re,
                    nombre: nombre,
                    descripcion: descripcion,
                    integrantes: integrantes,
                    grupo: grupo,
                    imagen: imagen),
                Proyecto(
                    re: re,
                    nombre: nombre2,
                    descripcion: descripcion2,
                    integrantes: integrantes2,
                    grupo: grupo2,
                    imagen: imagen2),
              ],
            )
          ],
        ),
        Footer(re: re)
      ],
    );
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
    required this.nombre,
    required this.descripcion,
    required this.integrantes,
    required this.grupo,
    required this.imagen,
    required this.nombre2,
    required this.descripcion2,
    required this.integrantes2,
    required this.grupo2,
    required this.imagen2,
  });

  final Responsive re;
  final String nombre;
  final String descripcion;
  final String integrantes;
  final String grupo;
  final String imagen;
  final String nombre2;
  final String descripcion2;
  final String integrantes2;
  final String grupo2;
  final String imagen2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              MenuHome(re: re),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Proyecto(
                      re: re,
                      nombre: nombre,
                      descripcion: descripcion,
                      integrantes: integrantes,
                      grupo: grupo,
                      imagen: imagen),
                  Proyecto(
                      re: re,
                      nombre: nombre2,
                      descripcion: descripcion2,
                      integrantes: integrantes2,
                      grupo: grupo2,
                      imagen: imagen2),
                ],
              ),
              Footer(re: re)
            ],
          )
        ],
      ),
    );
  }
}
