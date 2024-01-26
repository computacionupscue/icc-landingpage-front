import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getProyecto() async {
  List proyectos = [];
  CollectionReference collectionReferenceProyecto = db.collection('proyecto');

  QuerySnapshot queryProyecto = await collectionReferenceProyecto.get();

  for (var documento in queryProyecto.docs) {
    final Map<String, dynamic> data = documento.data() as Map<String, dynamic>;
    final proyect = {
      "nombre": data["nombre"],
      "descripcion": data["descripcion"],
      "integrantes": data["integrantes"],
      "grupo": data["grupo"],
      "imagen": data["imagen"],
      "uid": documento.id
    };

    proyectos.add(proyect);
  }

  return proyectos;
}
