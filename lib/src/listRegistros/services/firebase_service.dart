import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getEstudiante() async {
  List estudiante = [];
  CollectionReference collectionReferenceEstudiante = db.collection('registro');

  QuerySnapshot queryEstudiante = await collectionReferenceEstudiante.get();

  for (var documento in queryEstudiante.docs) {
    estudiante.add(documento.data());
  }

  return estudiante;
}
