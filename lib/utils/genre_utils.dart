import 'package:u_movieapp/export.dart';

//!40
class GenreUtils {
  static List<MoviesGenre> movieGenresNames(List<int> genreIds) {
    final moviesRepository = getIt<MoviesRepository>();
    final cachedGenres = moviesRepository.cachedGenres;
    print(cachedGenres);
    List<MoviesGenre> genresNames = [];
    for (var genreId in genreIds) {
      // print("gener ID: ${genreId}");
      var genre = cachedGenres.firstWhere(
        //g is the list of genre coming from fetchgenre section]
        //this is just filtering each movie genre based on the list from the
        (g) => g.id == genreId,
        orElse: () => MoviesGenre(id: 5448484, name: 'Unknown'),
      );
      genresNames.add(genre);
    }

    return genresNames;
  }
}
