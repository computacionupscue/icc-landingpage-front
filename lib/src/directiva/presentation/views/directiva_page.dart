import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_administrativos.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_docentes.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_header.dart';
import 'package:landing_page/src/shared/responsive.dart';

class DirectivaPage extends StatelessWidget {
  DirectivaPage({super.key});

  final CollectionReference _perfil =
      FirebaseFirestore.instance.collection('perfil');

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: StreamBuilder(
          stream: _perfil.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot?> snapshots) {
            String nombre1 = "";
            String correo1 = "";
            String nombre2 = "";
            String correo2 = "";
            if (snapshots.hasData) {
              nombre1 = snapshots.data!.docs[0]['nombre'];
              correo1 = snapshots.data!.docs[0]['correo'];
              nombre2 = snapshots.data!.docs[1]['nombre'];
              correo2 = snapshots.data!.docs[1]['correo'];
            }
            return ListView(
              children: [
                Column(
                  children: [
                    //MenuHome(re: re),
                    Header(re: re),
                    Administrativos(
                      nombre1: nombre1,
                      correo1: correo1,
                      nombre2: nombre2,
                      correo2: correo2,
                      re: re
                    ),
                    Docentes(re: re),
                  ],
                )
              ],
            );
          }
      ),
    );
  }
}
