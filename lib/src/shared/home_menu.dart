import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';

import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/home/presentation/bloc/home/home_bloc.dart';

import 'package:landing_page/src/shared/responsive.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 1000)
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
    return Column(
      children: [
        Container(
            height: re.hp(5),
            width: double.maxFinite,
            color: AppColors.primaryBlue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // final homebloc = context.read<HomeBloc>();
                    // homebloc.add(const GetDataEvent(valor: 'Modo claro'));
                  },
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.white, // Color del texto del botón
                      textStyle: Theme.of(context).textTheme.bodyMedium),
                  // child: BlocBuilder<HomeBloc, HomeState>(
                  //   builder: (context, state) {
                  //     if (state is HomeInitial) {
                  //       return const Text(
                  //         "Modo Oscuro",
                  //       );
                  //     } else if (state is HomeLoading) {
                  //       return const Center(
                  //         child: CircularProgressIndicator(),
                  //       );
                  //     }

                  //     return Text(
                  //       (state as HomeLoaded).valor,
                  //     );
                  //   },
                  // ),
                  child: const Text(
                    "Modo Oscuro",
                  ),
                ),
              ],
            )),
        Container(
          margin: const EdgeInsets.symmetric(vertical: AppLayoutConst.marginL),
          height: re.hp(15),
          width: double.maxFinite,
          child: Image.asset(
            AppAssets.upsLogo,
          ),
        ),
        Container(
          height: re.hp(5),
          width: double.maxFinite,
          color: AppColors.primaryBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.home.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Inicio",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.directiva.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Directiva",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context)
                      .go(PAGES.malla.pagePath); // Navegar a la ruta '/second
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Malla Curricular",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context)
                      .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Color del texto del botón
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                child: const Text(
                  "Grupos ASU",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.proyectos.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Proyectos",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.admin.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Administración",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MobileModel extends StatefulWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  State<_MobileModel> createState() => _MobileModelState();
}

class _MobileModelState extends State<_MobileModel>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  bool _showColumn = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  void _toggleColumn() {
    if (_showColumn) {
      controller.reverse();
    } else {
      controller.forward();
    }
    setState(() {
      _showColumn = !_showColumn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors
                  .black, // Puedes ajustar el color del borde según tus necesidades
              width:
                  0.3, // Puedes ajustar el ancho del borde según tus necesidades
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _toggleColumn(); // Llama al nuevo método al presionar el botón
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Container(
                      width: widget.re.hp(6),
                      height: widget.re.hp(5),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _MenuTile(
                              isOpen: isOpen,
                              controller: controller,
                              re: widget.re),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: AppLayoutConst.marginL),
                  child: Image.asset(
                    AppAssets.upsLogo,
                    height: widget.re.hp(15),
                    width: widget.re.hp(50),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.solidMoon,
                    size: 35, //
                  ),
                ),
              ],
            ),
            if (_showColumn)
              AnimatedSize(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: _MenuColumn(),
              ),
          ],
        ),
      );
    });
  }
}

class _MenuTile extends StatelessWidget {
  const _MenuTile({
    required this.isOpen,
    required this.controller,
    required this.re,
  });
  final Responsive re;
  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 0 : 0,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.black,
            size: 35,
          ),
        ],
      ),
    );
  }
}

class _MenuColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Puedes personalizar el contenido del "column" según tus necesidades
    return Container(
      width: double.maxFinite,
      color: AppColors.primaryBlueMaterial,
      child: Column(
        children: [
          ListTile(
            title: Text('Inicio',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.home.pagePath);
            },
          ),
          ListTile(
            title: Text('Directiva',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.directiva.pagePath);
            },
          ),
          ListTile(
            title: Text('Malla Curricular',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.malla.pagePath);
            },
          ),
          ListTile(
            title: Text('Grupos ASU',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.asu.pagePath);
            },
          ),
          ListTile(
            title: Text('Proyectos',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.proyectos.pagePath);
            },
          ),
          ListTile(
            title: Text('Administración',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center),
            onTap: () {
              GoRouter.of(context).go(PAGES.admin.pagePath);
            },
          ),
        ],
      ),
    );
  }
}
