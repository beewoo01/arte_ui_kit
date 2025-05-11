import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/utils/empty_expanded.dart';
import 'package:flutter_ui_kit/utils/gap.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RunningApp(),
      ),
    );
  }
}

class RunningApp extends StatelessWidget {
  const RunningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text("Hello"),
          HEIGHT5,
          Text("Hello"),
          HEIGHT20,
          EmptyExpanded(),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),

        ],
      ),
    );
  }
}

