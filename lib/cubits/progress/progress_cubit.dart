import 'dart:convert';

import 'package:five_o_four/models/word.dart';
import 'package:five_o_four/services/hive_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'progress_state.dart';
part 'progress_cubit.g.dart';

class ProgressCubit extends Cubit<ProgressState> {
  ProgressCubit() : super(ProgressState.initial()) {
    _load().then((s) => emit(s)).catchError((_) {});
  }

  Future<ProgressState> _load() async {
    final jsonString = HiveService.read("progress");
    if (jsonString == null) {
      return ProgressState.initial();
    }
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return ProgressState.fromJson(jsonMap);
  }

  void bookMark(int lessonIndex, int wordIndex) {
    var newState = ProgressState(bookMarks: state.bookMarks);
    newState.bookMarks[lessonIndex][wordIndex] =
        !newState.bookMarks[lessonIndex][wordIndex];
    HiveService.write("progress", jsonEncode(newState.toJson()));
    emit(newState);
  }
}
