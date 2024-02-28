import 'package:flutter/material.dart';

import 'package:cinemapedia/config/router/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp.router(
      //nos lleva a la pantalla principal
      routerConfig: appRouter,
      //quita el banner de debug mode
      debugShowCheckedModeBanner: false,
      //Llama al metodo del constructor para
      // establecer el tema por defecto o
      //los temas disponibles
      theme: AppTheme().getTheme(),
    );
  }
}
