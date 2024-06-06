

import 'package:flutter/material.dart';

import 'ui/screens/homepage_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const HomepageScreen(),
    );
  }
}