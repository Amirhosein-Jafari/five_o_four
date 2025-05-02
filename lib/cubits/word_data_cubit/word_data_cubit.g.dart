// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_data_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordDataState _$WordDataStateFromJson(Map<String, dynamic> json) =>
    WordDataState(
      words: (json['words'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => Word.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$WordDataStateToJson(WordDataState instance) =>
    <String, dynamic>{
      'words': instance.words,
    };
