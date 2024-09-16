import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchProvider with ChangeNotifier {
  Timer? _timer;
  int _milliseconds = 0;

  bool _isRunning = false;

  int get milliseconds => _milliseconds;
  bool get isRunning => _isRunning;

  void start() {
    if (_isRunning) return;

    _isRunning = true;
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      _milliseconds += 10;
      notifyListeners();
    });
  }

  void pause() {
    if (!_isRunning) return;

    _isRunning = false;
    _timer?.cancel();
  }

  void reset() {
    _timer?.cancel();
    _milliseconds = 0;
    _isRunning = false;
    notifyListeners();
  }

  String get formattedTime {
    final hours = (_milliseconds ~/ 3600000).toString().padLeft(2, '0');
    final minutes = ((_milliseconds % 3600000) ~/ 60000).toString().padLeft(2, '0');
    final seconds = ((_milliseconds % 60000) ~/ 1000).toString().padLeft(2, '0');
    final milliseconds = ((_milliseconds % 1000) ~/ 10).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds:$milliseconds';
  }
}
