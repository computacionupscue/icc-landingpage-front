import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class CustomDirectivaBox extends StatefulWidget {
  final String nombre;
  final String cargo;
  final String correo;
  final String foto;
  final String id;

  const CustomDirectivaBox(
      {super.key,
      required this.nombre,
      required this.cargo,
      required this.correo,
      required this.foto,
      required this.id});

  @override
  // ignore: library_private_types_in_public_api
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<CustomDirectivaBox> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: InkWell(
            onTap: () {
              GoRouter.of(context)
                  .goNamed(PAGES.perfilColab.pageName, pathParameters: {
                "id": widget.id
              });
            },
            child: Container(
                width: re.hp(40), // Ancho de la imagen
                height: re.hp(40),
                decoration: BoxDecoration(
                    color: isHovered
                        ? const Color.fromARGB(255, 248, 248, 248)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: isHovered
                        ? const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ]
                        : List.empty()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: re.hp(25), // Ancho de la imagen
                      height: re.hp(25),
                      decoration: BoxDecoration(
                        shape: BoxShape
                            .circle, // Hace que el contenedor sea circular
                        border: Border.all(
                          color: Colors.white, // Color del borde
                          width: 2.0, // Ancho del borde
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Color de la sombra
                            spreadRadius: 0.2, // Extensión de la sombra
                            blurRadius: 5, // Radio de desenfoque de la sombra
                            offset: const Offset(
                                0, 3), // Desplazamiento de la sombra
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(widget.nombre,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    Text(widget.cargo,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.primaryBlue),
                        textAlign: TextAlign.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons
                              .email, // Puedes cambiar esto por cualquier otro icono de la clase Icons
                          color: AppColors
                              .primaryBlue, // Puedes personalizar el color del icono
                          size:
                              re.hp(2.8), // Puedes ajustar el tamaño del icono
                        ),
                        SizedBox(
                          width: re.hp(1),
                        ),
                        Text(widget.correo,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: AppColors.primaryBlue),
                            textAlign: TextAlign.center),
                      ],
                    )
                  ],
                ))));
  }
}
