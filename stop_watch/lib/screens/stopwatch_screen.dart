import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/time_display.dart';
import '../widgets/control_buttons.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TimeDisplay(),  // Display hours:minutes:seconds:milliseconds
          SizedBox(height: 50),
          ControlButtons(),  // Start, Pause, and Reset buttons
        ],
      ),
    );
  }
}
