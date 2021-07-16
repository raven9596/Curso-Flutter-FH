import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey   = '4db821d1716320e522f393ecd9c357ae';
  final String _baseUrl  = 'api.themoviedb.org';
  final String _language = 'es-ES';

  MoviesProvider() {
    // ignore: avoid_print
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url =
        Uri.https(_baseUrl, '/books/v1/volumes', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
  }
}
