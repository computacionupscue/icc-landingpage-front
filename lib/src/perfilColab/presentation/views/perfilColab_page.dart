import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            return ListView(
              children: [
                Perfil(
                  nombre: nombre,
                  titulo1: titulo1,
                  asig1: asig1,
                  cargo: cargo,
                  correo: correo,
                  re: re,
                ),
              ],
            );
          }
      ),
    );
  }
}
