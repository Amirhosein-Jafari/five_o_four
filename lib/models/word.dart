import 'package:json_annotation/json_annotation.dart';

part 'word.g.dart';

@JsonSerializable()
class Word {
  final String word;
  final String translation;
  final String definition;
  final String definitionTranslation;
  final String example1;
  final String exampleTranslation1;
  final String example2;
  final String exampleTranslation2;
  final String example3;
  final String exampleTranslation3;
  final String storyTitle;
  final String storyTitleTranslation;
  final String? story;
  final String? storyTranslation;
  final String? photoUrl;
  final String? pronunciationUrl;

  Word({
    required this.word,
    required this.translation,
    required this.definition,
    required this.definitionTranslation,
    required this.example1,
    required this.exampleTranslation1,
    required this.example2,
    required this.exampleTranslation2,
    required this.example3,
    required this.exampleTranslation3,
    required this.storyTitle,
    required this.storyTitleTranslation,
    this.story,
    this.storyTranslation,
    this.photoUrl,
    this.pronunciationUrl,
  });

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);

  Map<String, dynamic> toJson() => _$WordToJson(this);
}
