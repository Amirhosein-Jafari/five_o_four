// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Word _$WordFromJson(Map<String, dynamic> json) => Word(
      word: json['word'] as String,
      translation: json['translation'] as String,
      definition: json['definition'] as String,
      definitionTranslation: json['definitionTranslation'] as String,
      example1: json['example1'] as String,
      exampleTranslation1: json['exampleTranslation1'] as String,
      example2: json['example2'] as String,
      exampleTranslation2: json['exampleTranslation2'] as String,
      example3: json['example3'] as String,
      exampleTranslation3: json['exampleTranslation3'] as String,
      storyTitle: json['storyTitle'] as String,
      storyTitleTranslation: json['storyTitleTranslation'] as String,
      story: json['story'] as String?,
      storyTranslation: json['storyTranslation'] as String?,
      photoUrl: json['photoUrl'] as String?,
      pronunciationUrl: json['pronunciationUrl'] as String?,
    );

Map<String, dynamic> _$WordToJson(Word instance) => <String, dynamic>{
      'word': instance.word,
      'translation': instance.translation,
      'definition': instance.definition,
      'definitionTranslation': instance.definitionTranslation,
      'example1': instance.example1,
      'exampleTranslation1': instance.exampleTranslation1,
      'example2': instance.example2,
      'exampleTranslation2': instance.exampleTranslation2,
      'example3': instance.example3,
      'exampleTranslation3': instance.exampleTranslation3,
      'storyTitle': instance.storyTitle,
      'storyTitleTranslation': instance.storyTitleTranslation,
      'story': instance.story,
      'storyTranslation': instance.storyTranslation,
      'photoUrl': instance.photoUrl,
      'pronunciationUrl': instance.pronunciationUrl,
    };
