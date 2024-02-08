import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/services/firebase_remote_config_service.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Novedades extends StatefulWidget {
  Novedades({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  State<Novedades> createState() => _NovedadesState();
}

class _NovedadesState extends State<Novedades> {
  final remoteConfig = FirebaseRemoteConfigService();

  List<String> images = [];
  List<String> imageLinks = [];

  void obtenerDatosRemotos() {
    images = [
      remoteConfig.getString(FirebaseRemoteConfigKeys.item1Imagen),
      remoteConfig.getString(FirebaseRemoteConfigKeys.item2Imagen),
      remoteConfig.getString(FirebaseRemoteConfigKeys.item3Imagen),
    ];

    imageLinks = [
      remoteConfig.getString(FirebaseRemoteConfigKeys.item1Link),
      remoteConfig.getString(FirebaseRemoteConfigKeys.item2Link),
      remoteConfig.getString(FirebaseRemoteConfigKeys.item3Link),
    ];
  }

  int indice = 0;

  @override
  Widget build(BuildContext context) {
    obtenerDatosRemotos();
    return GestureDetector(
      child: Container(
        color: AppColors.primaryBlue,
        child: LayoutBuilder(
          builder: (context, constraints) {
            double containerHeight = constraints.maxWidth *
                0.26; // Ajusta el factor según tus necesidades
            return Center(
              child: SizedBox(
                height: containerHeight,
                width: double.infinity,
                child: Swiper(
                  onIndexChanged: (index) {
                    indice = index;
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
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
                  viewportFraction: 1.0, // Usar 1.0 para ocupar toda la anchura
                ),
              ),
            );
          },
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

Future<void> setupRemoteConfig() async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));
}
