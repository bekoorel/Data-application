import 'package:data_app/features/home/presentation/screens/home_screen_movies.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => MoviesPage(),
  ),
];
