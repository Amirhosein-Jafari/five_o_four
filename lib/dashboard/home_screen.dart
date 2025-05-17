import 'package:animations/animations.dart';
import 'package:five_o_four/cubits/word_data_cubit/word_data_cubit.dart';
import 'package:five_o_four/dashboard/lesson_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordDataCubit, WordDataState>(
      builder: (context, state) {
        if (state.words.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }

        final wordsPerLesson = state.words.first.length;
        final wordCount = state.words.length * wordsPerLesson;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 24,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Your Progress",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const Spacer(),
                            Text("50%",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    )),
                          ],
                        ),
                        LinearProgressIndicator(
                          value: 50 / 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.book_rounded,
                                  size: 32,
                                ),
                                const SizedBox(height: 8),
                                Text("0/42",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium),
                                const SizedBox(height: 4),
                                Text(
                                  "Lessons",
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.menu_book_rounded,
                                  size: 32,
                                ),
                                const SizedBox(height: 8),
                                Text("0/504",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium),
                                const SizedBox(height: 4),
                                Text(
                                  "Words",
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: wordCount,
                  itemBuilder: (context, index) {
                    final lesson = (index / wordsPerLesson).ceil();
                    return Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: OpenContainer(
                        closedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        closedElevation: 0,
                        openBuilder: (context, _) => LessonScreen(
                          lesson: lesson,
                          words: state.words[index],
                        ),
                        closedBuilder: (context, openContainer) =>
                            GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            // color: Theme.of(context).colorScheme.surface,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.surface,
                                  Theme.of(context).colorScheme.primary,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Icon
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withValues(alpha: 0.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      Icons.book,
                                      color: Theme.of(context).primaryColor,
                                      size: 24,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // Title
                                  Text(
                                    "Lesson ${lesson + 1}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  // Subtitle
                                  Text(
                                    '12 words to learn',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  // Progress
                                  Text(
                                    '0/12',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
