import 'package:flutter/material.dart';
import 'package:logbook_app_080/features/logbook/models/log_model.dart';

class LogController {
  final ValueNotifier<List<LogModel>> logsNotifier = ValueNotifier([]);

  void addLog(String title, String desc) {
    final newLog = LogModel(
      title: title,
      description: desc,
      date: DateTime.now().toString(),
    );
    logsNotifier.value = [...logsNotifier.value, newLog];
  }

  void updateLog(int index, String title, String desc) {
    final currentLogs = List<LogModel>.from(logsNotifier.value);
    currentLogs[index] = LogModel(
      title: title,
      description: desc,
      date: DateTime.now().toString(),
    );
    logsNotifier.value = currentLogs;
  }

  void removeLog(int index) {
    final currentLogs = List<LogModel>.from(logsNotifier.value);
    currentLogs.removeAt(index);
    logsNotifier.value = currentLogs;
  }
}
