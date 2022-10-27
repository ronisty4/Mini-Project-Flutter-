import 'package:miniproject_recipe_app/models/resep.dart';

class Dto {
  final String method;
  final bool status;
  final List<Resep> results;

  Dto({required this.method, required this.status, required this.results});

  factory Dto.fromJson(Map<String, dynamic> json) {
    return Dto(
        method: json['method'] as String,
        status: json['status'] as bool,
        results: json['results'] as List<Resep>);
  }
}
