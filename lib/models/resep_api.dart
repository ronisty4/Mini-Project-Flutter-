import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:miniproject_recipe_app/models/resep.dart';

class ResepApi {
  static Future<List<Resep>?> fetchResep() async {
    try {
      final response = await http.get(
          Uri.parse('https://masak-apa-tomorisakura.vercel.app/api/recipes'));
      final parse =
          jsonDecode(response.body)['results'].cast<Map<String, dynamic>>();
      return parse.map<Resep>((json) => Resep.fromJson(json)).toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
