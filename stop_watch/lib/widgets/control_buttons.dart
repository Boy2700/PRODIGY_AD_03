import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/stopwatch_provider.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stopwatch = context.watch<StopwatchProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: stopwatch.isRunning ? null : stopwatch.start,
          child: Text(stopwatch.isRunning ? 'Resume' : 'Start'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: stopwatch.isRunning ? stopwatch.pause : null,
          child: const Text('Pause'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: stopwatch.reset,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
