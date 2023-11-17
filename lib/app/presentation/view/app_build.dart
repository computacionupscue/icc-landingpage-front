import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_router.dart';
import 'package:landing_page/src/asu/presentation/views/asu_page.dart';
import 'package:landing_page/src/directiva/directiva.dart';
import 'package:landing_page/src/formulario/presentation/views/formulario_page.dart';
import 'package:landing_page/src/home/home.dart';
import 'package:landing_page/src/login/presentation/views/login_page.dart';
import 'package:landing_page/src/mallaCurricular/mallaCurricular.dart';
import 'package:landing_page/src/proyectos/presentation/proyectos_presentation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'ICC - Ing en Ciencias Computacionales';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //initialRoute: '/', // Ruta inicial
      // routes: {
      //'/': (context) => LoginPage(), // Ruta principal
      // '/home': (context) => HomePage(),
      // '/formulario':(context) => FormularioPage(),
      // '/directiva':(context) => DirectivaPage(),
      // '/malla':(context) => MallaPage(),
      // '/asu':(context) => AsuPage(),
      // '/proyectos':(context) => ProyectosPage(),
      // Otra ruta
      // },
      //TODO: ajustar segun varibale de entorno
      // debugShowCheckedModeBanner: !Environment.appProd,

      //TODO: config slnag to internacionalization paquete SLANG
      // locale: TranslationProvider.of(context).flutterLocale,
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: AppLocaleUtils.supportedLocales,

      // scaffoldMessengerKey:
      //     RepositoryProvider.of<GlobalKey<ScaffoldMessengerState>>(context),

      title: title,
      routerConfig: AppRouter.router,

      // TODO: config theme
      // theme:  AppTheme.light,
      // darkTheme: AppTheme.dark,
      // themeMode: themeMode,
    );
  }
}




/// EXAMPLE
/// 
/// Argumento [themeMode] define le tema de la apliacion que viene del state de
/// [AppSettingsCubit], y lo seteamos en `themeMode`.
///
/// Providing a restorationScopeId allows the Navigator built by the
/// MaterialApp to restore the navigation stack when a user leaves and
/// returns to the app after it has been killed while running in the
/// background on `restorationScopeId`.
///
///
/// Provide the generated AppLocalizations to the MaterialApp. This
/// allows descendant Widgets to display the correct translations
/// depending on the user's locale.
///
///
/// Define `scaffoldMessengerKey` from dependencie
/// GlobalKey<ScaffoldMessengerState> from RepositoryProvider to keep global
/// scafooldMessengerKey
///
/// Use AppLocalizations to configure the correct application title
/// depending on the user's locale.
///
/// The appTitle is defined in `apptext` files found in the localization
/// directory.
///
///
///
///  Define a light and dark color theme. Then, read the user's
/// preferred ThemeMode (light, dark, or system default) from the
/// settingsController to display the correct theme.
///
///
// class _BuildMaterial extends StatelessWidget {
//   const _BuildMaterial({
//     required this.themeMode,
//   });

//   final ThemeMode themeMode;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: !Environment.appProd,
//       restorationScopeId: 'app',
//       locale: TranslationProvider.of(context).flutterLocale,
//       localizationsDelegates: const [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: AppLocaleUtils.supportedLocales,
//       scaffoldMessengerKey:
//           RepositoryProvider.of<GlobalKey<ScaffoldMessengerState>>(context),
//       title: 'UPS App',
//       routerConfig: AppRouter.router,
      
//       theme: AppTheme.light,
//       darkTheme: AppTheme.dark,
//       themeMode: themeMode,
//     );
//   }
// }
