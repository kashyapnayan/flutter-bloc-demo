import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  final _apiKey = 'YOUR_KEY';
  final _baseUrl = 'http://api.themoviedb.org/3/movie/popular?api_key=';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await http
        .get(Uri.parse('$_baseUrl$_apiKey'));
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}