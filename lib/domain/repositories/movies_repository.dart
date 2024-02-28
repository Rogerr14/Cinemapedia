
import 'package:cinemapedia/domain/entities/movie.dart';

abstract class RepositoryDatasource {
  Future<List<Movie>> getNowPlay(
    {int page = 1}
  );
}
