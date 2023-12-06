import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Perfil extends StatelessWidget {
  String nombre;
  String titulo1;
  String titulo2;
  String titulo3;
  String titulo4;
  String asig1;
  String asig2;

  Perfil({
    super.key,
    required this.re,
    required this.nombre,
    required this.titulo1,
    required this.titulo2,
    required this.titulo3,
    required this.titulo4,
    required this.asig1,
    required this.asig2,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Obtén la anchura actual de la ventana
        double windowWidth = constraints.maxWidth;

        // Calcula el factor de escala en función de la anchura de la ventana
        double scaleFactor = windowWidth /
            500.0; // Puedes ajustar este valor según tus necesidades
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.scale(
              scale: scaleFactor,
              child: Image.asset(
                AppAssets.salesianosLogo,
                width: re.hp(90), // Ancho de la imagen
                height: re.hp(90),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.btnBackground, // Color del borde
                  width: 1.0, // Ancho del borde
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: re.hp(100),
                    color: AppColors.btnBackground,
                    child: Text(nombre,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    width: re.hp(100),
                    color: const Color.fromARGB(255, 248, 248, 248),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: re.hp(4),
                        ),
                        Text("    Educación",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $titulo1",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $titulo2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $titulo3",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $titulo4",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        Text("    Asignaturas Dictadas",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $asig1",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(2),
                        ),
                        VinietaText("    $asig2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: re.hp(6),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
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
          TextSpan(text: text, style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
