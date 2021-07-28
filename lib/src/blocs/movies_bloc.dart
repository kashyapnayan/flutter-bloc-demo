import 'dart:async';

import '../resources/repository.dart';
import '../models/item_model.dart';

class MoviesBloc {
  final _repository = Repository();

  final _moviesListStreamController = StreamController<ItemModel>();
  Stream<ItemModel> get movieListStream => _moviesListStreamController.stream;

  StreamSink<ItemModel> get movieListSink => _moviesListStreamController.sink;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesListStreamController.add(itemModel);
  }

  dispose() {
    _moviesListStreamController.close();
  }
}

final bloc = MoviesBloc();