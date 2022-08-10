import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/harrypotter_model.dart';

class HarryPotterService {
  Future<List<HpCharacters>> fetchHPInformation() async {
    var client = http.Client();

    final Uri url = Uri(
      scheme: 'https',
      host: 'own-hp-api.herokuapp.com',
      path: 'api/characters',
      // queryParameters: {'name': 'name',},
    );

    var response = await client.get(url);

    if (response.statusCode == 200) {
      print("OK");
      // print(response.body);
      try{
        List<dynamic> decodedList = jsonDecode(response.body);
        return List<HpCharacters>.from(
            decodedList.map((z) => HpCharacters.fromMap(z)));
      } on Error catch(_,stackTrace){
        print(stackTrace);
        rethrow;
      }
    } else {
      throw Exception("Failed to load Hogwarts Information.");
    }
  }

  Future<List<HpCharacters>> fetchHPHouse(String house) async {
    var client = http.Client();

    final Uri url = Uri(
      scheme: 'https',
      host: 'own-hp-api.herokuapp.com',
      path: 'api/characters/house/${house.toLowerCase()}',
      // queryParameters: {'name': 'name',},
    );

    var response = await client.get(url);

    if (response.statusCode == 200) {
      print("OK");
      // print(response.body);
      try{
        List<dynamic> decodedList = jsonDecode(response.body);
        return List<HpCharacters>.from(
            decodedList.map((z) => HpCharacters.fromMap(z)));
      } on Error catch(_,stackTrace){
        print(stackTrace);
        rethrow;
      }
    } else {
      throw Exception("Failed to load Hogwarts Information.");
    }
  }
}
