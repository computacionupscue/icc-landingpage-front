import 'package:landing_page/src/mallaCurricular/domain/entity/Ciclo.dart';

class LocalMalla {
  static List<Ciclo> getMalla() {
    final json = [
      {
        "nombre": "Cuarto Nivel",
        "materias": [
          {
            "nombre": "Métodos Numerios",
            "horas_cd": 64,
            "horas_pe": 0,
            "horas_a": 96,
            "codigo": "17",
            "requisito": "Ecuaciones Diferenciales"
          },
          {
            "nombre": "Fundamentos de Base de Datos",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "21",
            "requisito": "Programación Aplicada"
          },
          {
            "nombre": "Redes de Computadoras l",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "19",
            "requisito": "Arquitectura del Computador"
          },
          {
            "nombre": "Arquitectura del Computador",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "18",
            "requisito": "Electrónica"
          },
          {
            "nombre": "Administración de Sistemas Operativos",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "20",
            "requisito": "Fundamentos de Sistemas Operativos"
          },
          {
            "nombre": "Pensamiento Social de la Iglesia",
            "horas_cd": 32,
            "horas_pe": 0,
            "horas_a": 48,
            "codigo": "16",
            "requisito": "Ninguno"
          }
        ]
      },
      {
        "nombre": "Cuarto Nivel",
        "materias": [
          {
            "nombre": "Métodos Numerios",
            "horas_cd": 64,
            "horas_pe": 0,
            "horas_a": 96,
            "codigo": "17",
            "requisito": "Ecuaciones Diferenciales"
          },
          {
            "nombre": "Fundamentos de Base de Datos",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "21",
            "requisito": "Programación Aplicada"
          },
          {
            "nombre": "Redes de Computadoras l",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "19",
            "requisito": "Arquitectura del Computador"
          },
          {
            "nombre": "Arquitectura del Computador",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "18",
            "requisito": "Electrónica"
          },
          {
            "nombre": "Administración de Sistemas Operativos",
            "horas_cd": 48,
            "horas_pe": 16,
            "horas_a": 56,
            "codigo": "20",
            "requisito": "Fundamentos de Sistemas Operativos"
          },
          {
            "nombre": "Pensamiento Social de la Iglesia",
            "horas_cd": 32,
            "horas_pe": 0,
            "horas_a": 48,
            "codigo": "16",
            "requisito": "Ninguno"
          }
        ]
      }
    ];
    return obtenerListaCiclosDesdeJson(json);
  }

  static List<Ciclo> obtenerListaCiclosDesdeJson(List<dynamic> jsonList) {
    return jsonList.map((jsonCiclo) => Ciclo.fromJson(jsonCiclo)).toList();
  }
}
