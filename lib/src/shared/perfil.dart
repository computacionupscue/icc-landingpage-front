import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Perfil extends StatelessWidget {
  String nombre;
  String cargo;
  String correo;
  List<dynamic> titulo1;
  List<dynamic> asig1;

  Perfil(
      {super.key,
      required this.re,
      required this.nombre,
      required this.titulo1,
      required this.asig1,
      required this.cargo,
      required this.correo});

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(children: [
              Image.asset(
                AppAssets.salesianosLogo,
                width: re.hp(90), // Ancho de la imagen
                height: re.hp(90),
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: re.hp(10),
              )
            ]),
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
                          height: re.hp(2),
                        ),
                        Text("    $cargo",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center),
                        SizedBox(
                          height: re.hp(2),
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
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: titulo1.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: VinietaText("    ${titulo1[index]}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold)),
                            );
                          },
                        ),
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
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: asig1.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: VinietaText("    ${asig1[index]}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold)),
                            );
                          },
                        ),
                        SizedBox(
                          height: re.hp(8),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: re.hp(3),
                            ),
                            Icon(
                              Icons
                                  .email, // Puedes cambiar esto por cualquier otro icono de la clase Icons
                              color: AppColors
                                  .primaryBlue, // Puedes personalizar el color del icono
                              size: re.hp(
                                  2.8), // Puedes ajustar el tamaño del icono
                            ),
                            SizedBox(
                              width: re.hp(1),
                            ),
                            Text(correo,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppColors.primaryBlue),
                                textAlign: TextAlign.center),
                          ],
                        ),
                        SizedBox(
                          height: re.hp(4),
                        )
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
