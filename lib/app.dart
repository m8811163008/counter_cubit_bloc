import 'package:flutter/material.dart';
import 'package:flutter_counter/view/counter_page.dart';

/// A [MaterialApp] which sets the `home` to [CounterPage]
class CounterApp extends MaterialApp {
  CounterApp({Key? key}) : super(key: key, home: CounterPage());
}
