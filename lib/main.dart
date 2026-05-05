import 'package:flutter/material.dart';
import 'features/home/home_view.dart';

void main() {
  runApp(const LuvMumApp());
}

class LuvMumApp extends StatelessWidget {
  const LuvMumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '❤️ Annem ❤️',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE89393),
          brightness: Brightness.light,
        ),
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: const Color(0xFFFFF9F9),
      ),
      home: const HomeView(),
    );
  }
}
