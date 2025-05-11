import 'package:flutter/material.dart';

class EmptyExpanded extends StatelessWidget {
  const EmptyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: SizedBox.shrink());
  }
}
