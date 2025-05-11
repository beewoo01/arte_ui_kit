import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  final Widget child;

  const SafeAreaScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}
