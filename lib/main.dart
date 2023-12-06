import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          apiKey: "AIzaSyBwTmeVMpUcNgQeYZoPROEjnvs2opHZViE",
          authDomain: "fir-web-ff3be.firebaseapp.com",
          projectId: "fir-web-ff3be",
          storageBucket: "fir-web-ff3be.appspot.com",
          messagingSenderId: "348238221266",
          appId: "1:348238221266:web:5c3d6b8f75b0d88c0b820b"));

  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}
