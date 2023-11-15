import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Informacion extends StatelessWidget {
  const Informacion({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 950)
            ? _DesktopModel(re: re)
            : _MobileModel(re: re);
      },
    );
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 30),
            height: re.hp(10),
            width: double.maxFinite,
            child: Center(
                child: Text("Información de la carrera",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)))),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text(
                        'Finalizacion de inscripciones\n02/05/2023',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.primaryBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de matriculas\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Finalizacion de matriculas\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Finalizacion de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de matriculas\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Finalizacion de matriculas\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 30),
            height: re.hp(10),
            width: double.maxFinite,
            child: Center(
                child: Text("Información de la carrera",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)))),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text(
                        'Finalizacion de inscripciones\n02/05/2023',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.primaryBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Finalizacion de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text(
                        'Finalizacion de inscripciones\n02/05/2023',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.primaryBlue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Inicio de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.app_registration, // El ícono que deseas mostrar
                        color: AppColors
                            .primaryBlue, // Opcional: Define el color del ícono
                        size: 48.0,
                      ),
                      Text("Finalizacion de inscripciones\n02/05/2023",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
