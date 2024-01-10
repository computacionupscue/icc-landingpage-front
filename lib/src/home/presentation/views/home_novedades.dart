import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Novedades extends StatelessWidget {
  Novedades({
    super.key,
    required this.re,
  });

  final List<String> images = [
    AppAssets.inscripciones,
    AppAssets.becas,
    AppAssets.posgrados
  ];

  final List<String> imageLinks = [
    'https://www.ups.edu.ec/web/guest/estudia-en-la-ups',
    'https://bienestar.ups.edu.ec/becasups/',
    'https://ofertaposgrados.ups.edu.ec/oferta-posgrados-ups',
  ];

  int indice = 0;

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: re.hp(54),
        width: double.maxFinite,
        color: AppColors.primaryBlue,
        child: Center(
          child: Swiper(
            onIndexChanged: (index) {
              // Aquí puedes hacer lo que necesites con el índice
              indice = index;
            },
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                images[index],
                fit: BoxFit.contain,
              );
            },
            indicatorLayout: PageIndicatorLayout.SCALE,
            autoplay: true,
            autoplayDelay: 5000,
            itemCount: images.length,
            pagination: const SwiperPagination(),
            control: const SwiperControl(color: Colors.black),
            fade: 1.0,
            viewportFraction: re.hp(1),
          ),
        ),
      ),
      onTap: () async {
        final String currentLink = imageLinks[indice];

        if (await canLaunch(currentLink)) {
          await launch(currentLink);
        } else {
          throw 'No se pudo abrir la URL: $currentLink';
        }
      },
    );
  }
}
