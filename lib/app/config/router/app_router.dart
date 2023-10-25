import 'package:flutter/material.dart' show GlobalKey, NavigatorState;

import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/screens/not_found_page.dart';

// PAGES
import 'package:landing_page/src/login/login.dart';

import 'app_routes_pages.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: PAGES.login.pagePath,

    //TODO: ajustar segun varibale de entorno
    // debugLogDiagnostics: Environment.appProd,

    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      if (state.uri.toString() != PAGES.login.pagePath) {
        return PAGES.login.pagePath;
      }
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
    ],
    errorBuilder: (context, state) => NotFoundScreen(
      route: state.uri.toString(),
    ),
  );

  static GoRouter get router => _router;
  static GlobalKey<NavigatorState> get navigatorState => _rootNavigatorKey;
}
