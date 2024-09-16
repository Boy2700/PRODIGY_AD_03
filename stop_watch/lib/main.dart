import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/stopwatch_provider.dart';
import 'screens/stopwatch_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => StopwatchProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StopwatchScreen(),
    );
  }
}
