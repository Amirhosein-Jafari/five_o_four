part of 'progress_cubit.dart';

@JsonSerializable()
class ProgressState {
  final List<List<bool>> bookMarks;
  final List<List<bool>> learned;

  ProgressState({
    required this.bookMarks,
    required this.learned,
  });

  factory ProgressState.initial() => ProgressState(
        bookMarks: List.generate(42, (_) => List.filled(12, false)),
        learned: List.generate(42, (_) => List.filled(12, false)),
      );

  factory ProgressState.fromJson(Map<String, dynamic> json) =>
      _$ProgressStateFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressStateToJson(this);
}
