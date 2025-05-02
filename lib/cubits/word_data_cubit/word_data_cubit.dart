import 'dart:convert';

import 'package:five_o_four/models/word.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'word_data_state.dart';
part 'word_data_cubit.g.dart';

class WordDataCubit extends Cubit<WordDataState> {
  WordDataCubit() : super(WordDataState.initial()) {
    _load().then((s) => emit(s)).catchError((_) {});
  }

  Future<WordDataState> _load() async {
    final String jsonString = await rootBundle.loadString('assets/words.json');
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return WordDataState.fromJson(jsonMap);
  }
}
