import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/stopwatch_provider.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final stopwatchProvider = Provider.of<StopwatchProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: stopwatchProvider.isRunning
              ? null
              : stopwatchProvider.startTimer,
          child: const Text('Start'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: stopwatchProvider.isRunning
              ? stopwatchProvider.pauseTimer
              : null,
          child: const Text('Pause'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: stopwatchProvider.resetTimer,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
