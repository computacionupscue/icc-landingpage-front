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
                    final homebloc = context.read<HomeBloc>();
                    homebloc.add(const GetDataEvent(valor: 'Modo claro'));
                  },
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.white, // Color del texto del botón
                      textStyle: Theme.of(context).textTheme.bodyMedium),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state is HomeInitial) {
                        return const Text(
                          "Modo Oscuro",
                        );
                      } else if (state is HomeLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Text(
                        (state as HomeLoaded).valor,
                      );
                    },
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
  GlobalKey _containerKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    if (isOpen) {
                      controller.reverse();
                      _hideOverlayMenu();
                    } else {
                      controller.forward();

                      _showOverlayMenu(context);
                    }
                    setState(() {
                      isOpen = !isOpen;
                    });
                  },
                  child: Container(
                    key: _containerKey,
                    padding: EdgeInsets.symmetric(horizontal: widget.re.hp(2)),
                    width: widget.re.hp(18),
                    height: widget.re.hp(6),
                    color: Colors.black,
                    child: Column(
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
                  size: 30, //
                ),
              ),
            ],
          ),
        ],
      );
    });
  }

  void _showOverlayMenu(BuildContext context) {
    // Obtener las coordenadas del Container anterior
    RenderBox renderBox =
        _containerKey.currentContext?.findRenderObject() as RenderBox;
    Offset containerPosition = renderBox.localToGlobal(Offset.zero);

    // Calcular la posición del menú debajo del Container
    double menuTop = containerPosition.dy + renderBox.size.height;
    double menuRight = MediaQuery.of(context).size.width -
        containerPosition.dx -
        renderBox.size.width;
    // Crear una entrada para el Overlay
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: menuTop,
        right: menuRight,
        child: Material(
          child: Container(
            width: widget.re.hp(18),
            height: 202,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  child: ListTile(
                    title: Text(
                      'Directiva',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      _hideOverlayMenu();
                      GoRouter.of(context).go(PAGES.directiva.pagePath);
                    },
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    title: Text(
                      'Malla Curricular',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      _hideOverlayMenu();
                      GoRouter.of(context).go(PAGES.malla.pagePath);
                    },
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    title: Text(
                      'Grupos ASU',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      _hideOverlayMenu();
                      GoRouter.of(context).go(PAGES.asu.pagePath);
                    },
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    title: Text(
                      'Proyectos',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      _hideOverlayMenu();
                      GoRouter.of(context).go(PAGES.proyectos.pagePath);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // Insertar la entrada en el Overlay
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideOverlayMenu() {
    // Eliminar la entrada del Overlay
    _overlayEntry?.remove();
    // setState(() {
    //   isOpen = !isOpen;
    // });
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
      width: re.hp(18),
      height: re.hp(6),
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 30 : 0,
          ),
          Text("Menú",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontSize: 16)),
          const Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
