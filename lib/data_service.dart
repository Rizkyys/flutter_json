import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'player.dart';

class DataService {
  Future<List<Player>> loadPlayers() async {
    final jsonString = await rootBundle.loadString('assets/players.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);
    return jsonResponse.map((json) => Player.fromJson(json)).toList();
  }
}
