import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/stopwatch_provider.dart';

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stopwatch = context.watch<StopwatchProvider>();

    return Text(
      stopwatch.formattedTime,
      style: const TextStyle(
        fontSize: 50, // Adjust size for visibility
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
