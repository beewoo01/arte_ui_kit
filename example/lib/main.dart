import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/arte_ui_kit.dart';
import 'package:flutter_ui_kit/utils/empty_expanded.dart';
import 'package:flutter_ui_kit/utils/gap.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: RunningApp()));
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
          DefaultTextButton(title: "Hello", callback: () {}),
          HEIGHT5,
          DefaultTextButton.fullWidth(
            title: "Hello",
            height: 100,
            callback: () {},
          ),
          HEIGHT5,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextButton.square(
                title: "title",
                callback: () {},
                dimension: 120,
                textColor: Colors.red,
              ),
              WIDTH5,
              DefaultTextButton.square(
                title: "title",
                callback: () {},
                dimension: 120,
              ),
              WIDTH5,
              DefaultTextButton.square(
                title: "title",
                callback: () {},
                dimension: 120,
              ),
            ],
          ),
          HEIGHT20,
          DefaultElevatedButton(callback: () {}, title: "Helloz"),
          HEIGHT5,
          DefaultElevatedButton.fullWidth(title: "gg", callback: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultElevatedButton.square(
                title: "title",
                callback: () {},
                dimension: 100,
              ),
              WIDTH10,
              DefaultElevatedButton.square(
                title: "title",
                callback: () {},
                dimension: 100,
              ),
              WIDTH10,
              DefaultElevatedButton.square(
                title: "title",
                callback: () {},
                dimension: 100,
              ),
            ],
          ),
          EmptyExpanded(),
        ],
      ),
    );
  }
}
