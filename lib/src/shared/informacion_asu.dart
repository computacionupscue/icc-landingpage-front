import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class InformacionAsu extends StatelessWidget {
  final Responsive re;
  final String nombre;
  final String descripcion;
  final String mision;
  final String vision;
  final List<Widget> actividades;
  final List<Widget> animador;
  final List<Widget> coordinador;

  const InformacionAsu({
    super.key,
    required this.re,
    required this.nombre,
    required this.descripcion,
    required this.mision,
    required this.vision,
    required this.actividades,
    required this.animador,
    required this.coordinador,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nombre,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.primaryBlue)),
        Container(
            margin: EdgeInsets.all(re.hp(5)),
            width: re.hp(150),
            child: Column(
              children: [
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "DESCRIPCIÓN",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing:
                        const Icon(Icons.expand_more, color: Colors.white),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                descripcion,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "MISIÓN",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing:
                        const Icon(Icons.expand_more, color: Colors.white),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                mision,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "VISIÓN",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing:
                        const Icon(Icons.expand_more, color: Colors.white),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                vision,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "ACTIVIDADES",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing:
                        const Icon(Icons.expand_more, color: Colors.white),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: actividades),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "ANIMADOR",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing:
                        const Icon(Icons.expand_more, color: Colors.white),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: animador,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: false,
                    title: Text(
                      "COORDINADOR",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    trailing: const Icon(
                      Icons.expand_more,
                      color: Colors.white,
                    ),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: re.hp(150),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: coordinador,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}

class VinietaText extends StatelessWidget {
  final String text;

  const VinietaText(this.text, {super.key});

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
