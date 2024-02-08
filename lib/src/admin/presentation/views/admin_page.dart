import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/menu_admin.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MenuAdmin(re: re),
                // Agregar una imagen o icono decorativo

                SizedBox(height: re.hp(8)),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: AppLayoutConst.marginXL),
                  child: Text(
                    "Bienvenido a la Administración",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: AppColors.primaryBlue, fontSize: 30),
                  ),
                ),
                SizedBox(height: re.hp(5)),
                Container(
                  height: re.hp(52),
                  //width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      AppAssets.admin,
                    ),
                  ),
                ),
                SizedBox(height: re.hp(5)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: re.hp(40)),
                  child: Text(
                    '¡Bienvenido a la puerta de control de tu reino digital! Nuestra página de administración de sitios web es tu centro de mando, donde la simplicidad se encuentra con el poder. Imagina un espacio virtual donde cada clic es un paso hacia el dominio total sobre tu contenido en línea.\n\nCon una interfaz elegante y amigable, te sumergirás en un viaje intuitivo donde el caos se transforma en orden. Desde el pulso de las estadísticas hasta la cirugía fina de la personalización, cada rincón de tu sitio web está a un clic de distancia. Gráficos vibrantes te guían a través del rendimiento en tiempo real, mientras que las herramientas de administración te ofrecen el control absoluto sobre cada pixel y palabra.\n\n¿Necesitas cambios rápidos? Nuestro panel de control relámpago es tu atajo hacia la eficiencia, transformando tareas tediosas en procesos fluidos. Experimenta el arte de la administración simplificada, donde la complejidad se desvanece y la productividad se dispara.\n\nEn esta página, no solo gestionas datos; esculpes experiencias. Con funciones avanzadas a tu alcance, desde la gestión de usuarios hasta la optimización del SEO, te convertirás en el arquitecto maestro de la experiencia digital. Navega por nuestra página de administración y descubre un universo donde tu visión toma forma con un solo clic. ¡Bienvenido al futuro de la administración web!',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColors.primaryBlue),
                    textAlign: TextAlign.justify,
                  ),
                ),

                SizedBox(
                  height: re.hp(10),
                ),
                Footer(re: re)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
