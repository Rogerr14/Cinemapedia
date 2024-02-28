//Sea abstracta, va  definir com lucen los origenes de ddatos

import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDatasource {
  Future<List<Movie>> getNowPlay(
    {int page = 1}
  );
}
