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

class ProyectosPage extends StatelessWidget {
  const ProyectosPage({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width < 1400 ? _MobileModel(re: re) : _DesktopModel(re: re);
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Text("Proyecto #1",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: AppColors.primaryBlue)),
                      ),
                      Container(
                        color: Colors.amber,
                        height: re.hp(45),
                        width: re.hp(90),
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              images[index],
                              fit: BoxFit.scaleDown,
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                        height: re.hp(20),
                        width: re.hp(90),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Color del borde
                            width: 2.0, // Ancho del borde
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Aqui va la informacion del proyecto",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.black)),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryBlueMaterial,
                              ),
                              child: Text('Mas Informacion',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Text("Proyecto #2",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: AppColors.primaryBlue)),
                      ),
                      Container(
                        color: Colors.amber,
                        height: re.hp(45),
                        width: re.hp(90),
                        child: Swiper(
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
                          control: const SwiperControl(),
                          fade: 1.0,
                          viewportFraction: 0.85,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: re.hp(5)),
                        height: re.hp(20),
                        width: re.hp(90),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Color del borde
                            width: 2.0, // Ancho del borde
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Aqui va la informacion del proyecto",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.black)),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryBlueMaterial,
                              ),
                              child: Text('Mas Informacion',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
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
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                    child: Text("Proyecto #1",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: AppColors.primaryBlue)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: re.hp(5)),
                    color: Colors.amber,
                    height: re.hp(45),
                    width: re.hp(90),
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          images[index],
                          fit: BoxFit.scaleDown,
                        );
                      },
                      indicatorLayout: PageIndicatorLayout.SCALE,
                      autoplay: true,
                      autoplayDelay: 5000,
                      itemCount: images.length,
                      pagination: const SwiperPagination(),
                      control: const SwiperControl(),
                      fade: 1.0,
                      viewportFraction: re.hp(0.135),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(re.hp(5)),
                    height: re.hp(20),
                    width: re.hp(90),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Aqui va la informacion del proyecto",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.black)),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryBlueMaterial,
                          ),
                          child: Text('Mas Informacion',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                    child: Text("Proyecto #2",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: AppColors.primaryBlue)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: re.hp(5)),
                    color: Colors.amber,
                    height: re.hp(45),
                    width: re.hp(90),
                    child: Swiper(
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
                        control: const SwiperControl(),
                        fade: 1.0,
                        viewportFraction: re.hp(0.135)),
                  ),
                  Container(
                    margin: EdgeInsets.all(re.hp(5)),
                    height: re.hp(20),
                    width: re.hp(90),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Color del borde
                        width: 2.0, // Ancho del borde
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Aqui va la informacion del proyecto",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.black)),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryBlueMaterial,
                          ),
                          child: Text('Mas Informacion',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
