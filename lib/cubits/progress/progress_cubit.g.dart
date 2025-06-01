// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressState _$ProgressStateFromJson(Map<String, dynamic> json) =>
    ProgressState(
      bookMarks: (json['bookMarks'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as bool).toList())
          .toList(),
      learned: (json['learned'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as bool).toList())
          .toList(),
    );

Map<String, dynamic> _$ProgressStateToJson(ProgressState instance) =>
    <String, dynamic>{
      'bookMarks': instance.bookMarks,
      'learned': instance.learned,
    };
