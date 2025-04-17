class Word {
  final String word;
  final String phonetic;
  final String translation;
  final String wordForm;
  final String definition;
  final String definitionTranslation;
  final String example1;
  final String exampleTranslation1;
  final String example2;
  final String exampleTranslation2;
  final String example3;
  final String exampleTranslation3;
  final String story;
  final String storyTranslation;
  final String? photoUrl;
  final String? pronunciationUrl;

  Word({
    required this.word,
    required this.phonetic,
    required this.translation,
    required this.wordForm,
    required this.definition,
    required this.definitionTranslation,
    required this.example1,
    required this.exampleTranslation1,
    required this.example2,
    required this.exampleTranslation2,
    required this.example3,
    required this.exampleTranslation3,
    required this.story,
    required this.storyTranslation,
    this.photoUrl,
    this.pronunciationUrl,
  });

  // Manual JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'phonetic': phonetic,
      'translation': translation,
      'wordForm': wordForm,
      'definition': definition,
      'definitionTranslation': definitionTranslation,
      'example1': example1,
      'exampleTranslation1': exampleTranslation1,
      'example2': example2,
      'exampleTranslation2': exampleTranslation2,
      'example3': example3,
      'exampleTranslation3': exampleTranslation3,
      'story': story,
      'storyTranslation': storyTranslation,
      'photoUrl': photoUrl,
      'pronunciationUrl': pronunciationUrl,
    };
  }

  // Manual JSON deserialization
  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String,
      translation: json['translation'] as String,
      wordForm: json['wordForm'] as String,
      definition: json['definition'] as String,
      definitionTranslation: json['definitionTranslation'] as String,
      example1: json['example1'] as String,
      exampleTranslation1: json['exampleTranslation1'] as String,
      example2: json['example2'] as String,
      exampleTranslation2: json['exampleTranslation2'] as String,
      example3: json['example3'] as String,
      exampleTranslation3: json['exampleTranslation3'] as String,
      story: json['story'] as String,
      storyTranslation: json['storyTranslation'] as String,
      photoUrl: json['photoUrl'] as String?,
      pronunciationUrl: json['pronunciationUrl'] as String?,
    );
  }
}
