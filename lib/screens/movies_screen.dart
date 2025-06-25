import 'dart:developer' as logp;

import 'package:u_movieapp/export.dart';
import 'package:u_movieapp/service/api_service.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
        actions: [
          IconButton(
            onPressed: () {
              //  getIt<NavigationService>().showSnackbar();
              //   getIt<NavigationService>().showDialog(MoviesWidget());
              getIt<NavigationService>().navigate(const FavoritesScreen());
            },
            icon: const Icon(MyAppIcons.favoriteRounded, color: Colors.red),
          ),
          IconButton(
            onPressed: () async {
              //final List<MovieModel> movies = await getIt<ApiService>().fetchMovies();
              //log('movies $movies)

              // final List<MoviesGenre> genres = await getIt<ApiService>()
              //     .fetchGenres();
              // logp.log('Genres as $genres');
              final List<MovieModel> movies =
                  // await MoviesRepository(
                  //   getIt<ApiService>(),
                  // ).fetchMovies();
                  //!Without the getIt of MovieRepository
                  await getIt<MoviesRepository>().fetchMovies();
            },
            icon: const Icon(MyAppIcons.darkMode),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const MoviesWidget();
        },
      ),
    );
  }
}
