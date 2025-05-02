import 'package:five_o_four/models/word.dart';

class Lesson {
  final int id;
  final String title;
  final List<Word> words;

  Lesson({
    required this.id,
    required this.title,
    required this.words,
  });

  // Manual JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'words': words.map((word) => word.toJson()).toList(),
    };
  }

  // Manual JSON deserialization
  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'] as int,
      title: json['title'] as String,
      words: (json['words'] as List<dynamic>)
          .map((wordJson) => Word.fromJson(wordJson as Map<String, dynamic>))
          .toList(),
    );
  }
}
