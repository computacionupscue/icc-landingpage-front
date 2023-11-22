import 'package:flutter/material.dart' show GlobalKey, NavigatorState;

import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/screens/not_found_page.dart';
import 'app_routes_pages.dart';

// PAGES
import 'package:landing_page/src/login/login.dart';
import 'package:landing_page/src/home/home.dart';
import 'package:landing_page/src/formulario/formulario.dart';
import 'package:landing_page/src/directiva/directiva.dart';
import 'package:landing_page/src/mallaCurricular/mallaCurricular.dart';
import 'package:landing_page/src/asu/asu.dart';
import 'package:landing_page/src/proyectos/proyectos.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: PAGES.login.pagePath,

    //TODO: ajustar segun varibale de entorno
    // debugLogDiagnostics: Environment.appProd,

    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      // if (state.uri.toString() != PAGES.login.pagePath) {
      //   return PAGES.login.pagePath;
      // }
      return null;

      // TODO: controlar sesion par que redireccione
    },
    redirectLimit: 2,
    routes: [
      GoRoute(
        path: PAGES.login.pagePath,
        name: PAGES.login.pageName,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: PAGES.home.pagePath,
        name: PAGES.home.pageName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: PAGES.formulario.pagePath,
        name: PAGES.formulario.pageName,
        builder: (context, state) => const FormularioPage(),
      ),
      GoRoute(
        path: PAGES.directiva.pagePath,
        name: PAGES.directiva.pageName,
        builder: (context, state) => const DirectivaPage(),
      ),
      GoRoute(
        path: PAGES.malla.pagePath,
        name: PAGES.malla.pageName,
        builder: (context, state) => const MallaPage(),
      ),
      GoRoute(
        path: PAGES.asu.pagePath,
        name: PAGES.asu.pageName,
        builder: (context, state) => const AsuPage(),
      ),
      GoRoute(
        path: PAGES.proyectos.pagePath,
        name: PAGES.proyectos.pageName,
        builder: (context, state) => const ProyectosPage(),
      ),
    ],

    errorBuilder: (context, state) => NotFoundScreen(
      route: state.uri.toString(),
    ),
  );

  static GoRouter get router => _router;
  static GlobalKey<NavigatorState> get navigatorState => _rootNavigatorKey;
}
