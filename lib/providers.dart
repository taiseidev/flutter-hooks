import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// ChangeNotifierProviderを定義
final watchTimeProvider = ChangeNotifierProvider((_) => Counter());

class Counter extends ChangeNotifier {
  String time = '';
  void watchTime(Timer timer) {
    final now = DateTime.now();
    var formatter = DateFormat('HH:mm:ss');
    var formattedTime = formatter.format(now);
    time = formattedTime;
    notifyListeners();
  }
}
