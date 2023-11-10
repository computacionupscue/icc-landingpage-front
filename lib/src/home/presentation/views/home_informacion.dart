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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 50),
            height: re.hp(10),
            width: re.hp(220),
            child: const Center(
              child: Text("Información de la carrera",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  color: AppColors.primaryBlue
                )
              )
            )
          ),
          SizedBox(
              height: re.hp(10),
              width: re.hp(220),
              child: const Row(
                
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  SizedBox(
                    child: Row(
                      children:[
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Inicio de inscripciones\n02/05/2023",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryBlue)),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children:[
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text(
                          'Finalizacion de inscripciones\n02/05/2023',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBlue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children:[
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Inicio de matriculas\n02/05/2023",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryBlue
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children:[
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Finalizacion de matriculas\n02/05/2023",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryBlue
                          )
                        ),
                      ],
                    ),
                  ),
                  
                ],
              )
            ),
          SizedBox(
              height: re.hp(10),
              width: re.hp(220),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Row(
                      children:[
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Inicio de inscripciones\n02/05/2023",
                          style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryBlue
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Finalizacion de inscripciones\n02/05/2023",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryBlue)),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Inicio de matriculas\n02/05/2023",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryBlue)),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.app_registration, // El ícono que deseas mostrar
                          color: AppColors
                              .primaryBlue, // Opcional: Define el color del ícono
                          size: 48.0,
                        ),
                        Text("Finalizacion de matriculas\n02/05/2023",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryBlue)),
                      ],
                    ),
                  ),
                ],
              )
              ),
              ]
            ),
    );
  }
}
