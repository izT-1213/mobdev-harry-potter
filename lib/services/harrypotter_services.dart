import 'package:http/http.dart' as http;

import '../models/harrypotter_model.dart';

class HarryPotterService {
  Future<HpCharacters> fetchHPInformation() async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'own-hp-api.herokuapp.com',
      path: 'api/characters',
    );

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return HpCharacters.fromJson(response.body);
    } else {
      throw Exception("Failed to load Hogwarts Information.");
    }
  }
}
