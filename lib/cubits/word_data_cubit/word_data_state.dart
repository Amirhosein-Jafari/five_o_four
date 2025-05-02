part of 'word_data_cubit.dart';

@JsonSerializable()
class WordDataState {
  final List<List<Word>> words;

  WordDataState({
    required this.words,
  });

  factory WordDataState.initial() => WordDataState(words: []);

  factory WordDataState.fromJson(Map<String, dynamic> json) =>
      _$WordDataStateFromJson(json);

  Map<String, dynamic> toJson() => _$WordDataStateToJson(this);
}
