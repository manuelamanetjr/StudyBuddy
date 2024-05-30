import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskly/presentation/feature/splash/screens/splash_screen.dart';

Future main() async {
  runApp(const ProviderScope(child: TasklyApp()));
}

class TasklyApp extends StatelessWidget {
  const TasklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 233, 184, 50),
          brightness: Brightness.dark,
          surface: Color.fromARGB(255, 83, 128, 89),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 1, 90, 23),
      ),
      home: const SplashScreen(),
    );
  }
}
