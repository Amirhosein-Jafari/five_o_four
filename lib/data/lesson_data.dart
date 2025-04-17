import 'package:five_o_four/models/lesson_model.dart';
import 'package:five_o_four/models/word_model.dart';
import 'word_data.dart';

final List<Lesson> lessonData = [
  Lesson(
    id: 1,
    title: 'Lesson 1',
    words: [
      wordData[0], // The word "abandon"
      ...List.generate(11, (index) {
        return Word(
          word: 'Word ${index + 2}',
          phonetic: '/ˈwɜːrd${index + 2}/',
          translation: 'کلمه ${index + 2}',
          persianPhonetic: '/وُرد${index + 2}/',
          definition: 'Definition of word ${index + 2}',
          definitionTranslation: 'تعریف کلمه ${index + 2}',
          example1: 'Example 1 for word ${index + 2}.',
          exampleTranslation1: 'مثال ۱ برای کلمه ${index + 2}',
          example2: 'Example 2 for word ${index + 2}.',
          exampleTranslation2: 'مثال ۲ برای کلمه ${index + 2}',
          example3: 'Example 3 for word ${index + 2}.',
          exampleTranslation3: 'مثال ۳ برای کلمه ${index + 2}',
          story: 'Story for word ${index + 2}',
          storyTranslation: 'داستان برای کلمه ${index + 2}',
          photoUrl: 'https://via.placeholder.com/150',
          pronunciationUrl:
              'https://example.com/word${index + 2}_pronunciation.mp3',
        );
      }),
    ],
  ),
  // Placeholder for remaining lessons (2 to 42)
  ...List.generate(41, (index) {
    return Lesson(
      id: index + 2,
      title: 'Lesson ${index + 2}',
      words: List.generate(12, (wordIndex) {
        return Word(
          word: 'Word ${(index + 1) * 12 + wordIndex + 1}',
          phonetic: '/ˈwɜːrd${(index + 1) * 12 + wordIndex + 1}/',
          translation: 'کلمه ${(index + 1) * 12 + wordIndex + 1}',
          persianPhonetic: '/وُرد${(index + 1) * 12 + wordIndex + 1}/',
          definition: 'Definition of word ${(index + 1) * 12 + wordIndex + 1}',
          definitionTranslation:
              'تعریف کلمه ${(index + 1) * 12 + wordIndex + 1}',
          example1: 'Example 1 for word ${(index + 1) * 12 + wordIndex + 1}.',
          exampleTranslation1:
              'مثال ۱ برای کلمه ${(index + 1) * 12 + wordIndex + 1}',
          example2: 'Example 2 for word ${(index + 1) * 12 + wordIndex + 1}.',
          exampleTranslation2:
              'مثال ۲ برای کلمه ${(index + 1) * 12 + wordIndex + 1}',
          example3: 'Example 3 for word ${(index + 1) * 12 + wordIndex + 1}.',
          exampleTranslation3:
              'مثال ۳ برای کلمه ${(index + 1) * 12 + wordIndex + 1}',
          story: 'Story for word ${(index + 1) * 12 + wordIndex + 1}',
          storyTranslation:
              'داستان برای کلمه ${(index + 1) * 12 + wordIndex + 1}',
          photoUrl: 'https://via.placeholder.com/150',
          pronunciationUrl:
              'https://example.com/word${(index + 1) * 12 + wordIndex + 1}_pronunciation.mp3',
        );
      }),
    );
  }),
];
