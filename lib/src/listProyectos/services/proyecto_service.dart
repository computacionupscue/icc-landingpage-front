import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getProyecto() async {
  List proyectos = [];
  CollectionReference collectionReferenceProyecto = db.collection('proyecto');

  QuerySnapshot queryProyecto = await collectionReferenceProyecto.get();

  for (var documento in queryProyecto.docs) {
    proyectos.add(documento.data());
  }

  return proyectos;
}