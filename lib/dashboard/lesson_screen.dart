import 'package:five_o_four/cubits/progress/progress_cubit.dart';
import 'package:five_o_four/dashboard/word_screen.dart';
import 'package:five_o_four/models/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonScreen extends StatelessWidget {
  final int lesson;
  final List<Word> words;

  const LessonScreen({
    super.key,
    required this.lesson,
    required this.words,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lesson ${lesson + 1}",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            final word = words[index];
            return Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => BlocProvider.value(
                        value: BlocProvider.of<ProgressCubit>(context),
                        child: WordDetailsScreen(
                          wordIndex: index,
                          lessonIndex: lesson,
                          word: word,
                        ),
                      ),
                    ),
                  );
                },
                child: BlocBuilder<ProgressCubit, ProgressState>(
                  builder: (context, state) {
                    return Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        title: Text(
                          word.word,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        subtitle: Text(
                          word.translation,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        trailing: IconButton(
                          icon: state.bookMarks[lesson][index]
                              ? const Icon(Icons.bookmark_add)
                              : const Icon(Icons.bookmark_add_outlined),
                          onPressed: () {
                            context
                                .read<ProgressCubit>()
                                .bookMark(lesson, index);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
