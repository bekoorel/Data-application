import 'package:data_app/features/home/screens/home_screen_movies.dart';
import 'package:data_app/features/singel_page/screens/singel_movie_page.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreenMovies(),
  ),
  GoRoute(
      path: '/singelPage',
      builder: (context, state) {
        final data = state.extra as Map<String, String>;
        return SingelMoviePage(data);
      }),
];
