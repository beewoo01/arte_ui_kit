import 'package:flutter/material.dart';

const HEIGHT5 = Height(height: 5);
const HEIGHT10 = Height(height: 10);
const HEIGHT15 = Height(height: 15);
const HEIGHT20 = Height(height: 20);

const WIDTH5 = Width(width: 5);
const WIDTH10 = Width(width: 10);
const WIDTH15 = Width(width: 15);
const WIDTH20 = Width(width: 20);

class Width extends StatelessWidget {
  final double width;

  const Width({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

class Height extends StatelessWidget {
  final double height;

  const Height({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class SampleWidget extends StatelessWidget {
  const SampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "data",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 10,
            fontStyle: FontStyle.normal,
          ),
        ),

        SizedBox.shrink(),
      ],
    );
  }
}
