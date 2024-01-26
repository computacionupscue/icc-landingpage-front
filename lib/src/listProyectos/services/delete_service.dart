import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> deleteProyecto(String uid) async {
  await db.collection("proyecto").doc(uid).delete();
}
