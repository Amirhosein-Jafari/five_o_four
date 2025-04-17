import 'package:five_o_four/constants/constants.dart';
import 'package:five_o_four/models/lesson_model.dart';
import 'package:five_o_four/screens/word_screen.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;
  final Function(int, bool) onProgressUpdate;

  const LessonScreen({
    super.key,
    required this.lesson,
    required this.onProgressUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          lesson.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: pagePadding(context),
        child: ListView.builder(
            itemCount: lesson.words.length,
            itemBuilder: (context, index) {
              final word = lesson.words[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WordDetailsScreen(
                          word: word,
                          onProgressUpdate: (isLearnt) {
                            onProgressUpdate(index, isLearnt);
                          },
                        ),
                      ),
                    );
                  },
                  child: Card(
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
                        word.phonetic,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.bookmark_add_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
