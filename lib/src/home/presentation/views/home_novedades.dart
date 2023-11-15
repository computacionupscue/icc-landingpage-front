import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

final List<String> images = [
  'assets/images/logos/ups.png',
  'assets/images/logos/ups-white.png',
  'assets/images/ups-30a.png',
  'assets/images/ups-30a-white.png'
  // ... más rutas de imágenes
];

class Novedades extends StatelessWidget {
  const Novedades({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: re.hp(50),
      width: double.maxFinite,
      color: AppColors.primaryYellow,
      child: Center(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              images[index],
              fit: BoxFit.fill,
            );
          },
          indicatorLayout: PageIndicatorLayout.SCALE,
          autoplay: true,
          autoplayDelay: 5000,
          itemCount: images.length,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
          fade: 1.0,
          viewportFraction: 0.85,
        ),
      ),
    );
  }
}