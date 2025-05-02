import 'package:five_o_four/cubits/word_data_cubit/word_data_cubit.dart';
import 'package:five_o_four/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => WordDataCubit(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 8,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).colorScheme.onSurface,
      currentIndex: 0, // Home is selected
      onTap: (index) {
        // Handle navigation
        if (index == 1) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Search screen placeholder')),
          );
        } else if (index == 2) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Bookmarks screen placeholder')),
          );
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Bookmarks',
        ),
      ],
    );
  }
}
