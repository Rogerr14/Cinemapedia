import 'package:cinemapedia/presentation/screens/movies/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  //aqui se colocan las listas de las rutas
  //declaramos una ruta inicial
  initialLocation: '/',

  //declaramos la lsta de rutas
  routes: [
    //creamos la ruta con GoRoute()
    GoRoute(
      path: '/',
      //VS declarada en homeScreen
      name: HomeScreen.name, 
      //builder apuntando a la instancia de homeScreen()
      builder: (context, state) => const HomeScreen(),
    )
  ]
);
