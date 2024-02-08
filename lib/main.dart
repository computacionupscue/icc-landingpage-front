import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/src/services/firebase_remote_config_service.dart';
import 'app/app.dart';
import 'core/app_bloc_observer.dart';

Future<void> main() async {
  //TODO: add Enviroment
  // await Environment.initEnvironment();

  //TODO: Confin FirebaseCore
  // Inizializar [Firebase]
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBGZvwyqiJcbadbLXprrTIcOjfZxinSGmo",
          authDomain: "icc-landingpage.firebaseapp.com",
          projectId: "icc-landingpage",
          storageBucket: "icc-landingpage.appspot.com",
          messagingSenderId: "486763575102",
          appId: "1:486763575102:web:d292c5e4c05af91a721e6f",
          measurementId: "G-3RJD2V0HG7"));

  await FirebaseRemoteConfigService().initialize();

  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}
