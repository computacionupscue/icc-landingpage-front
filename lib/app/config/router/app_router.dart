import 'package:flutter/material.dart' show GlobalKey, NavigatorState;

import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/screens/not_found_page.dart';
import 'package:landing_page/src/addProyectos/presentation/views/addProyectos_page.dart';
import 'package:landing_page/src/admin/presentation/admin_presentation.dart';
import 'package:landing_page/src/auth/auth.dart';
import 'package:landing_page/src/listProyectos/listProyectos.dart';
import 'package:landing_page/src/listRegistros/presentation/views/listRegistros_page.dart';
import 'package:landing_page/src/perfilColab/perfilColab.dart';
import 'package:landing_page/src/updProyectos/updProyectos.dart';
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
    initialLocation: PAGES.home.pagePath,

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
          routes: [
            GoRoute(
                path: PAGES.administracion.pagePath,
                name: PAGES.administracion.pageName,
                builder: (context, state) => const AuthPage(),
                routes: [
                  GoRoute(
                      path: PAGES.admin.pagePath,
                      name: PAGES.admin.pageName,
                      builder: (context, state) => const AdminPage(),
                      routes: [
                        GoRoute(
                          path: PAGES.listProyectos.pagePath,
                          name: PAGES.listProyectos.pageName,
                          builder: (context, state) =>
                              const ListProyectosPage(),
                        ),
                        GoRoute(
                          path: PAGES.listRegistros.pagePath,
                          name: PAGES.listRegistros.pageName,
                          builder: (context, state) =>
                              const ListRegistrosPage(),
                        ),
                        GoRoute(
                          path: PAGES.addProyectos.pagePath,
                          name: PAGES.addProyectos.pageName,
                          builder: (context, state) => const AddProyectosPage(),
                        ),
                        GoRoute(
                          path: PAGES.updProyectos.pagePath,
                          name: PAGES.updProyectos.pageName,
                          builder: (context, state) => UpdProyectosPage(
                              nombre: state.pathParameters["nombre"]!,
                              descripcion: state.pathParameters["descripcion"]!,
                              integrantes: state.pathParameters["integrantes"]!,
                              grupo: state.pathParameters["grupo"]!,
                              imagen: state.pathParameters["imagen"]!,
                              uid: state.pathParameters["uid"]!),
                        ),
                      ]),
                ]),
            GoRoute(
              path: PAGES.formulario.pagePath,
              name: PAGES.formulario.pageName,
              builder: (context, state) => const FormularioPage(),
            ),
            GoRoute(
                path: PAGES.directiva.pagePath,
                name: PAGES.directiva.pageName,
                builder: (context, state) => DirectivaPage(),
                routes: [
                  GoRoute(
                    path: PAGES.perfilColab.pagePath,
                    name: PAGES.perfilColab.pageName,
                    builder: (context, state) =>
                        PerfilColabPage(id: state.pathParameters["id"]!),
                  ),
                ]),
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
              builder: (context, state) => ProyectosPage(),
            ),
          ]),
    ],

    errorBuilder: (context, state) => NotFoundScreen(
      route: state.uri.toString(),
    ),
  );

  static GoRouter get router => _router;
  static GlobalKey<NavigatorState> get navigatorState => _rootNavigatorKey;
}
