import 'package:five_o_four/models/word.dart';
import 'package:five_o_four/theme.dart';
import 'package:flutter/material.dart';

class WordDetailsScreen extends StatefulWidget {
  final Word word;

  const WordDetailsScreen({
    super.key,
    required this.word,
  });

  @override
  State<WordDetailsScreen> createState() => _WordDetailsScreenState();
}

class _WordDetailsScreenState extends State<WordDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 220.0,
              pinned: true,
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline))
              ],
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/image2.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: const [0.2, 1],
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color.fromRGBO(0, 0, 0, 0.768),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.word.word,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(
                                      color: Colors.blue,
                                    ),
                              ),
                              IconButton.filled(
                                iconSize: 22,
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    const Color.fromRGBO(255, 255, 255, 0.2),
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            widget.word.translation,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.white, // Orange
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Definition Card

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: AppTheme.purpleAccent.withValues(alpha: 0.2),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Icon(Icons.book, color: AppTheme.purpleAccent),
                            Text(
                              'Definition',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: AppTheme.purpleAccent,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          widget.word.definition,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.word.definitionTranslation,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ),

                // Story Voice Player (This is shit dont give a fuck about it yet)
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.brown.withValues(alpha: 0.2),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'کدینگ فارسی',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Colors.brown,
                                  ),
                        ),
                        IconButton(
                          iconSize: 48,
                          onPressed: () {
                            // Add play functionality here
                          },
                          icon: Icon(
                            Icons.play_circle_fill,
                            color: Colors.brown,
                          ),
                        ),
                        Column(
                          children: [
                            LinearProgressIndicator(
                              value: 0.5, // Example progress value
                              backgroundColor:
                                  Colors.brown.withValues(alpha: 0.3),
                              valueColor: AlwaysStoppedAnimation(
                                Colors.brown,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '00:30 / 01:00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: AppTheme.purpleAccent,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Tabs (Examples, Story)
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: const [
                          Tab(text: 'Examples'),
                          Tab(text: 'Story'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 650,
                        child: TabBarView(
                          children: [
                            // Example Tab
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: AppTheme.pastilGreenAccent
                                  .withValues(alpha: 0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        spacing: 8,
                                        children: [
                                          Icon(Icons.format_quote,
                                              color:
                                                  AppTheme.pastilGreenAccent),
                                          Text(
                                            'Examples',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge
                                                ?.copyWith(
                                                  color: AppTheme
                                                      .pastilGreenAccent,
                                                ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: Column(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.word
                                                  .example1, // "a. When Roy abandoned his family, the police went looking for him."
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                            const SizedBox(height: 12),
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
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.word
                                                .example2, // "b. The soldier could not abandon his friends who were hurt in battle."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(height: 12),
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
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.word
                                                .example3, // "c. Because Rose was poor, she had to abandon her idea of going to college."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(height: 12),
                                          Text(
                                            widget.word
                                                .exampleTranslation3, // "چون ” رز ” فقیر بود از فکر رفتن به دانشگاه دست کشید."
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Examples Tab
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: AppTheme.darkPinkAccent
                                  .withValues(alpha: 0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      spacing: 8,
                                      children: [
                                        Icon(Icons.menu_book,
                                            color: AppTheme.pinkAccent),
                                        Text(
                                          'Story',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                color: AppTheme.pinkAccent,
                                              ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      widget.word.story ?? "",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      widget.word.storyTranslation ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              width: 0.1,
            ),
          ),
        ),
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                        color: AppTheme.blueAccent,
                      ),
                      Text(
                        "Previous",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppTheme.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VerticalDivider(
              color: AppTheme.blueAccent,
              indent: 8,
              endIndent: 8,
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppTheme.blueAccent,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 24,
                        color: AppTheme.blueAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
