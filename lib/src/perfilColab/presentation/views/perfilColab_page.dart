import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/perfil.dart';
import 'package:landing_page/src/shared/responsive.dart';

class PerfilColabPage extends StatelessWidget {
  PerfilColabPage({super.key});

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
              nombre = snapshots.data!.docs[0]['nombre'];
              titulo1 = snapshots.data!.docs[0]['titulos'] ?? [];
              asig1 = snapshots.data!.docs[0]['asignaturas'] ?? [];
              cargo = snapshots.data!.docs[0]['cargo'];
              correo = snapshots.data!.docs[0]['correo'];
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
                        correo: correo)
                    : _MobileModel(
                        re: re,
                        nombre: nombre,
                        titulo1: titulo1,
                        asig1: asig1,
                        cargo: cargo,
                        correo: correo);
              },
            );
          }),
    );
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
    required this.nombre,
    required this.titulo1,
    required this.asig1,
    required this.cargo,
    required this.correo,
  });

  final Responsive re;
  final String nombre;
  final List titulo1;
  final List asig1;
  final String cargo;
  final String correo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(children: [
              Image.asset(
                AppAssets.jenniferYepezPerfil,
                width: re.hp(80), // Ancho de la imagen
                height: re.hp(100),
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: re.hp(10),
              )
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
  const _MobileModel({
    required this.re,
    required this.nombre,
    required this.titulo1,
    required this.asig1,
    required this.cargo,
    required this.correo,
  });

  final Responsive re;
  final String nombre;
  final List titulo1;
  final List asig1;
  final String cargo;
  final String correo;

  @override
  Widget build(BuildContext context) {
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
                  ClipOval(
                    child: Image.asset(
                      AppAssets.jenniferYepezPerfil,
                      width: re.hp(25), // Ancho de la imagen
                      height: re.hp(25),
                      fit: BoxFit.cover,
                      // Alto de la imagen
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
