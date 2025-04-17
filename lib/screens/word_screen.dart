import 'package:five_o_four/constants/constants.dart';
import 'package:five_o_four/models/word_model.dart';
import 'package:flutter/material.dart';

class WordDetailsScreen extends StatefulWidget {
  final Word word;

  final Function(bool) onProgressUpdate;

  const WordDetailsScreen({
    super.key,
    required this.word,
    required this.onProgressUpdate,
  });

  @override
  State<WordDetailsScreen> createState() => _WordDetailsScreenState();
}

class _WordDetailsScreenState extends State<WordDetailsScreen> {
  bool _isPlayingStory = false;
  double _storyProgress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          widget.word.word, // "abandon"
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Photo Sectoin
              Center(
                child: Card(
                  child: Container(
                    height: 220,
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: Icon(
                        Icons.image,
                        size: 48,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Word Section
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Pronunciation Button
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor, // #4A90E2
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.volume_up),
                          color: Colors.white,
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Playing pronunciation for ${widget.word.word}'),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.word.word, // "abandon"
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                Text(
                                  widget.word.phonetic, // "/əˈbændən/"
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color:
                                            const Color(0xFFF5A623), // Orange
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  widget
                                      .word.translation, // "ترک کردن، رها کردن"
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                    fontFamilyFallback: ['Vazir'],
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  widget.word.persianPhonetic, // "/اِبَندِن/"
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: const Color(0xFFF5A623),
                                        fontFamilyFallback: ['Vazir'],
                                        fontWeight: FontWeight.bold,
                                      ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Story Voice Player
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // put a bold color gradient here
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 243, 200, 214), // Vibrant pink
                        Color.fromARGB(255, 190, 206, 250), // Vibrant blue
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xFFFF4081), // Vibrant pink
                            size: 20,
                          ),
                          Text(
                            'کدینگ فارسی',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: const Color(0xFFFF4081),
                                ),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color(0xFFFF4081), // Vibrant pink
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFF4081),
                            ),
                            child: IconButton(
                              icon: Icon(
                                _isPlayingStory
                                    ? Icons.pause
                                    : Icons.play_arrow,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _isPlayingStory = !_isPlayingStory;
                                  if (_isPlayingStory) {
                                    Future.doWhile(() async {
                                      await Future.delayed(
                                          const Duration(milliseconds: 200));
                                      if (!_isPlayingStory || !mounted)
                                        return false;
                                      setState(() {
                                        _storyProgress += 0.05;
                                        if (_storyProgress >= 1.0) {
                                          _storyProgress = 0.0;
                                          _isPlayingStory = false;
                                        }
                                      });
                                      return _isPlayingStory;
                                    });
                                  }
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      _isPlayingStory
                                          ? 'Playing story...'
                                          : 'Paused story',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF4081).withOpacity(0.3),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: FractionallySizedBox(
                                widthFactor: _storyProgress,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF4081),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Tabs (Definitions, Examples)
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      dividerColor: Colors.transparent,
                      splashBorderRadius: BorderRadius.circular(20),
                      tabs: const [
                        Tab(text: 'Definitions'),
                        Tab(text: 'Examples'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 300,
                      child: TabBarView(
                        children: [
                          // Definitions Tab
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Definition',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    widget.word
                                        .definition, // "desert; leave without planning to come back; quit"
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    widget.word
                                        .definitionTranslation, // "ترک کردن، ترک کردن بدون قصد بازگشت، دست کشیدن از"
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Examples Tab
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 8),
                                    Text(
                                      'Examples',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                    ),
                                    const SizedBox(height: 12),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.word
                                                .example1, // "a. When Roy abandoned his family, the police went looking for him."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            widget.word
                                                .exampleTranslation1, // "وقتی ” روی ” خانواده اش را ترک کرد پلیس به جستجویش پرداخت."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.word
                                                .example2, // "b. The soldier could not abandon his friends who were hurt in battle."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            widget.word
                                                .exampleTranslation2, // "سرباز نتوانست دوستانش را که در جنگ آسیب دیده بودند ترک کند."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.word
                                                .example3, // "c. Because Rose was poor, she had to abandon her idea of going to college."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            widget.word
                                                .exampleTranslation3, // "چون ” رز ” فقیر بود از فکر رفتن به دانشگاه دست کشید."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                            textDirection: TextDirection.rtl,
                                          ),
                                          SizedBox(
                                            height: 16,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Bottom sheet for floating button
      bottomSheet: Container(
        padding: pagePadding(context),
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(Theme.of(context).primaryColor),
          ),
          child: Text("Next"),
        ),
      ),
    );
  }
}
