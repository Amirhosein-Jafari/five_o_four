import 'package:five_o_four/cubits/word_data_cubit/word_data_cubit.dart';
import 'package:five_o_four/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search screen placeholder')),
              );
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => WordDataCubit(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal:
                  16), // This is only horizontal and the top padding is on the widget
          child: _body(context),
        ),
      ),
      bottomNavigationBar: _bottom(context),
    );
  }

  Widget _body(BuildContext context) {
    return HomeScreen();
  }

  Widget _bottom(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.1),
          offset: const Offset(0, -1),
          blurRadius: 2,
          spreadRadius: 0,
        ),
      ]),
      child: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        currentIndex: 0, // Home is selected
        onTap: (index) {
          // Handle navigation
          if (index == 1) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bookmarks screen placeholder')),
            );
          } else if (index == 2) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Settings screen placeholder')),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
