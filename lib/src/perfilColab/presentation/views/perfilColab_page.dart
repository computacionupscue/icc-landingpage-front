import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/perfil.dart';
import 'package:landing_page/src/shared/responsive.dart';

class PerfilColabPage extends StatelessWidget {
  final String id;

  PerfilColabPage({super.key, required this.id});
  final CollectionReference _perfil =
      FirebaseFirestore.instance.collection('perfil');

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: StreamBuilder(
          stream: _perfil.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot?> snapshots) {
            String nombre = "";
            String cargo = "";
            String correo = "";
            List<dynamic> titulo1 = [];
            List<dynamic> asig1 = [];
            if (snapshots.hasData) {
              int numero = int.parse(id);
              nombre = snapshots.data!.docs[numero]['nombre'];
              titulo1 = snapshots.data!.docs[numero]['titulos'] ?? [];
              asig1 = snapshots.data!.docs[numero]['asignaturas'] ?? [];
              cargo = snapshots.data!.docs[numero]['cargo'];
              correo = snapshots.data!.docs[numero]['correo'];
            }
            return LayoutBuilder(
              builder: (_, constraints) {
                return (constraints.maxWidth > 1280)
                    ? _DesktopModel(
                        re: re,
                        nombre: nombre,
                        titulo1: titulo1,
                        asig1: asig1,
                        cargo: cargo,
                        correo: correo,
                        id: id)
                    : _MobileModel(
                        re: re,
                        nombre: nombre,
                        titulo1: titulo1,
                        asig1: asig1,
                        cargo: cargo,
                        correo: correo,
                        id: id);
              },
            );
          }),
    );
  }
}

class _DesktopModel extends StatelessWidget {
  _DesktopModel(
      {required this.re,
      required this.nombre,
      required this.titulo1,
      required this.asig1,
      required this.cargo,
      required this.correo,
      required this.id});

  final Responsive re;
  final String nombre;
  final List titulo1;
  final List asig1;
  final String cargo;
  final String correo;
  final String id;
  String ruta = "0";

  @override
  Widget build(BuildContext context) {
    if (id == "0") {
      ruta = AppAssets.jenniferYepezPerfil;
    } else if (id == "1") {
      ruta = AppAssets.robertoGarciaPerfil;
    }
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(children: [
              Image.asset(
                ruta,
                width: re.hp(80), // Ancho de la imagen
                height: re.hp(100),
                fit: BoxFit.fill,
              ),
              // SizedBox(
              //   height: re.hp(10),
              // )
            ]),
            Perfil(
              nombre: nombre,
              titulo1: titulo1,
              asig1: asig1,
              cargo: cargo,
              correo: correo,
              re: re,
            ),
          ],
        )
      ],
    );
  }
}

class _MobileModel extends StatelessWidget {
  _MobileModel({
    required this.re,
    required this.nombre,
    required this.titulo1,
    required this.asig1,
    required this.cargo,
    required this.correo,
    required this.id,
  });

  final Responsive re;
  final String nombre;
  final List titulo1;
  final List asig1;
  final String cargo;
  final String correo;
  final String id;
  String ruta = "0";

  @override
  Widget build(BuildContext context) {
    if (id == "0") {
      ruta = AppAssets.jenniferYepezDocente;
    } else if (id == "1") {
      ruta = AppAssets.robertoGarciaDocente;
    }
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: re.hp(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: re.hp(5)),
                    width: re.hp(25), // Ancho de la imagen
                    height: re.hp(25),
                    decoration: BoxDecoration(
                      shape: BoxShape
                          .circle, // Hace que el contenedor sea circular
                      border: Border.all(
                        color: Colors.white, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.2), // Color de la sombra
                          spreadRadius: 0.2, // Extensión de la sombra
                          blurRadius: 5, // Radio de desenfoque de la sombra
                          offset:
                              const Offset(0, 3), // Desplazamiento de la sombra
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        ruta,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(nombre), Text(cargo)],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: re.hp(5)),
              child: Perfil(
                nombre: nombre,
                titulo1: titulo1,
                asig1: asig1,
                cargo: cargo,
                correo: correo,
                re: re,
              ),
            ),
          ],
        )
      ],
    );
  }
}
