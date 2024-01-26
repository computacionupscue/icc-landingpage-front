import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future <void> updProyecto(
  String uid,
  String newNombre,
  String newDescripcion,
  String newIntegrantes,
  String newGrupo,
  String newImagen,
) async {
  await db.collection("proyecto").doc(uid).set({
    "nombre": newNombre,
    "descripcion": newDescripcion,
    "integrantes": newIntegrantes,
    "grupo": newGrupo,
    "imagen": newImagen
  });
}
