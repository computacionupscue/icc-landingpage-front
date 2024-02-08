// To parse this JSON data, do
//
//     final ciclo = cicloFromJson(jsonString);

import 'dart:convert';

List<Ciclo> cicloFromJson(String str) =>
    List<Ciclo>.from(json.decode(str).map((x) => Ciclo.fromJson(x)));

String cicloToJson(List<Ciclo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ciclo {
  String nombre;
  List<Materia> materias;

  Ciclo({
    required this.nombre,
    required this.materias,
  });

  factory Ciclo.fromJson(Map<String, dynamic> json) => Ciclo(
        nombre: json["nombre"],
        materias: List<Materia>.from(
            json["materias"].map((x) => Materia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "materias": List<dynamic>.from(materias.map((x) => x.toJson())),
      };
}

class Materia {
  String nombre;
  int horasCd;
  int horasPe;
  int horasA;
  String codigo;
  String requisito;

  Materia({
    required this.nombre,
    required this.horasCd,
    required this.horasPe,
    required this.horasA,
    required this.codigo,
    required this.requisito,
  });

  factory Materia.fromJson(Map<String, dynamic> json) => Materia(
        nombre: json["nombre"],
        horasCd: json["horas_cd"],
        horasPe: json["horas_pe"],
        horasA: json["horas_a"],
        codigo: json["codigo"],
        requisito: json["requisito"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "horas_cd": horasCd,
        "horas_pe": horasPe,
        "horas_a": horasA,
        "codigo": codigo,
        "requisito": requisito,
      };
}
