import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AdminBody extends StatelessWidget {
  const AdminBody({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        const largeScreenThreshold = 1325;
        const tabletThreshold = 1100;
        if (constraints.maxWidth > largeScreenThreshold) {
          return _DesktopModel(
            re: re,
          );
        } else if (constraints.maxWidth > tabletThreshold) {
          return _TabletModel(
            re: re,
          );
        } else {
          return _MobileModel(
            re: re,
          );
        }
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: re.hp(40)),
      child: Text(
        '¡Bienvenido a la puerta de control de tu reino digital! Nuestra página de administración de sitios web es tu centro de mando, donde la simplicidad se encuentra con el poder. Imagina un espacio virtual donde cada clic es un paso hacia el dominio total sobre tu contenido en línea.\n\nCon una interfaz elegante y amigable, te sumergirás en un viaje intuitivo donde el caos se transforma en orden. Desde el pulso de las estadísticas hasta la cirugía fina de la personalización, cada rincón de tu sitio web está a un clic de distancia. Gráficos vibrantes te guían a través del rendimiento en tiempo real, mientras que las herramientas de administración te ofrecen el control absoluto sobre cada pixel y palabra.\n\n¿Necesitas cambios rápidos? Nuestro panel de control relámpago es tu atajo hacia la eficiencia, transformando tareas tediosas en procesos fluidos. Experimenta el arte de la administración simplificada, donde la complejidad se desvanece y la productividad se dispara.\n\nEn esta página, no solo gestionas datos; esculpes experiencias. Con funciones avanzadas a tu alcance, desde la gestión de usuarios hasta la optimización del SEO, te convertirás en el arquitecto maestro de la experiencia digital. Navega por nuestra página de administración y descubre un universo donde tu visión toma forma con un solo clic. ¡Bienvenido al futuro de la administración web!',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.primaryBlue),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _TabletModel extends StatelessWidget {
  const _TabletModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: re.hp(30)),
      child: Text(
        '¡Bienvenido a la puerta de control de tu reino digital! Nuestra página de administración de sitios web es tu centro de mando, donde la simplicidad se encuentra con el poder. Imagina un espacio virtual donde cada clic es un paso hacia el dominio total sobre tu contenido en línea.\n\nCon una interfaz elegante y amigable, te sumergirás en un viaje intuitivo donde el caos se transforma en orden. Desde el pulso de las estadísticas hasta la cirugía fina de la personalización, cada rincón de tu sitio web está a un clic de distancia. Gráficos vibrantes te guían a través del rendimiento en tiempo real, mientras que las herramientas de administración te ofrecen el control absoluto sobre cada pixel y palabra.\n\n¿Necesitas cambios rápidos? Nuestro panel de control relámpago es tu atajo hacia la eficiencia, transformando tareas tediosas en procesos fluidos. Experimenta el arte de la administración simplificada, donde la complejidad se desvanece y la productividad se dispara.\n\nEn esta página, no solo gestionas datos; esculpes experiencias. Con funciones avanzadas a tu alcance, desde la gestión de usuarios hasta la optimización del SEO, te convertirás en el arquitecto maestro de la experiencia digital. Navega por nuestra página de administración y descubre un universo donde tu visión toma forma con un solo clic. ¡Bienvenido al futuro de la administración web!',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.primaryBlue),
        textAlign: TextAlign.justify,
      ),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: re.hp(10)),
      child: Text(
        '¡Bienvenido a la puerta de control de tu reino digital! Nuestra página de administración de sitios web es tu centro de mando, donde la simplicidad se encuentra con el poder. Imagina un espacio virtual donde cada clic es un paso hacia el dominio total sobre tu contenido en línea.\n\nCon una interfaz elegante y amigable, te sumergirás en un viaje intuitivo donde el caos se transforma en orden. Desde el pulso de las estadísticas hasta la cirugía fina de la personalización, cada rincón de tu sitio web está a un clic de distancia. Gráficos vibrantes te guían a través del rendimiento en tiempo real, mientras que las herramientas de administración te ofrecen el control absoluto sobre cada pixel y palabra.\n\n¿Necesitas cambios rápidos? Nuestro panel de control relámpago es tu atajo hacia la eficiencia, transformando tareas tediosas en procesos fluidos. Experimenta el arte de la administración simplificada, donde la complejidad se desvanece y la productividad se dispara.\n\nEn esta página, no solo gestionas datos; esculpes experiencias. Con funciones avanzadas a tu alcance, desde la gestión de usuarios hasta la optimización del SEO, te convertirás en el arquitecto maestro de la experiencia digital. Navega por nuestra página de administración y descubre un universo donde tu visión toma forma con un solo clic. ¡Bienvenido al futuro de la administración web!',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.primaryBlue),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
