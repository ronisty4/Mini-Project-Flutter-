class Resep {
  final String title;
  final String thumb;
  final String key;
  final String times;
  final String serving;
  final String difficulty;

  Resep(
      {required this.title,
      required this.thumb,
      required this.key,
      required this.times,
      required this.serving,
      required this.difficulty});

  factory Resep.fromJson(Map<String, dynamic> json) {
    return Resep(
      title: json['title'] as String,
      thumb: json['thumb'] as String,
      key: json['key'] as String,
      times: json['times'] as String,
      serving: json['serving'] as String,
      difficulty: json['difficulty'] as String,
    );
  }
}
