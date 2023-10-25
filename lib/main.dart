import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'core/app_bloc_observer.dart';

Future<void> main() async {
  //TODO: add Enviroment
  // await Environment.initEnvironment();

//TODO: Confin FirebaseCore
  // / Inizializar [Firebase]
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}
