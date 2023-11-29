import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/responsive.dart';

class PerfilColabPage extends StatelessWidget {
  const PerfilColabPage({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.salesianosLogo,
                width: re.hp(90), // Ancho de la imagen
                height: re.hp(90),
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("JENNIFER ANDREA YEPEZ ALULEMA",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: re.hp(1),
                  ),
                  Text("DIRECCION DE CARRERA DE COMPUTACION",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: re.hp(1),
                  ),
                  Text("    Educación",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText("   INGENIERO DE SISTEMAS",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText("   BACHILLER EN COMERCIO Y ADMINISTRACION",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText(
                      "   MASTER OF SCIENCE IN COMPUTER FORENSICS AND CYBER SECURITY",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText(
                      "   COMPETENCIA DIGITAL PERSONAL DOCENTE E INVESTIGACION -PDI",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  Text("    Asignaturas Dictadas",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText("   FUNDAMENTOS DE BASE DE DATOS | COMPUTACIÓN",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: re.hp(2),
                  ),
                  VinietaText("   SEGURIDAD DE LA INFORMACIÓN | COMPUTACIÓN",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class VinietaText extends StatelessWidget {
  final String text;

  const VinietaText(this.text, {super.key, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Icon(
                Icons.circle,
                color:
                    Colors.black, // Puedes ajustar el color de la viñeta aquí
                size: 8.0,
              ),
            ),
          ),
          TextSpan(text: text, style: Theme.of(context).textTheme.titleMedium)
        ],
      ),
    );
  }
}
