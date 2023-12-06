import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/perfil.dart';
import 'package:landing_page/src/shared/responsive.dart';

class PerfilColabPage extends StatelessWidget {
  PerfilColabPage({super.key});

  final CollectionReference _perfil =
      FirebaseFirestore.instance.collection('perfil1');

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: StreamBuilder(
          stream: _perfil.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot?> snapshots) {
            String nombre = "";
            String titulo1 = "";
            String titulo2 = "";
            String titulo3 = "";
            String titulo4 = "";
            String asig1 = "";
            String asig2 = "";
            if (snapshots.hasData) {
              nombre = snapshots.data!.docs[0]['nombre'];
              titulo1 = snapshots.data!.docs[0]['titulo1'];
              titulo2 = snapshots.data!.docs[0]['titulo2'];
              titulo3 = snapshots.data!.docs[0]['titulo3'];
              titulo4 = snapshots.data!.docs[0]['titulo4'];
              asig1 = snapshots.data!.docs[0]['asig1'];
              asig2 = snapshots.data!.docs[0]['asig2'];
            }
            return ListView(
              children: [
                Perfil(
                  nombre: nombre,
                  titulo1: titulo1,
                  titulo2: titulo2,
                  titulo3: titulo3,
                  titulo4: titulo4,
                  asig1: asig1,
                  asig2: asig2,
                  re: re,
                ),
              ],
            );
          }),
    );
  }
}
