import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final double? shape;
  final Widget? child;
  final String title;
  final VoidCallback callback;

  const DefaultElevatedButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.shape,
    this.child,
    this.title = "",
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        this.backgroundColor ?? Theme.of(context).colorScheme.primary;

    final textColor = this.textColor ?? Theme.of(context).colorScheme.onPrimary;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: callback,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(shape ?? 20),
            ),
          ),
        ),
        child: child ?? Text(title, style: TextStyle(color: textColor)),
      ),
    );
  }

  factory DefaultElevatedButton.fullWidth({
    double? height,
    Color? backgroundColor,
    Color? textColor,
    Widget? child,
    String title = "",
    double? shape,
    required VoidCallback callback,
  }) {
    return DefaultElevatedButton(
      width: double.infinity,
      height: height,
      backgroundColor: backgroundColor,
      textColor: textColor,
      title: title,
      shape: shape,
      callback: callback,
      child: child,
    );
  }

  factory DefaultElevatedButton.square({
    required String title,
    required VoidCallback callback,
    double? dimension,
    Color? backgroundColor,
    Color? textColor,
    double? shape,
  }) {
    return DefaultElevatedButton(
      title: title,
      callback: callback,
      backgroundColor: backgroundColor,
      textColor: textColor,
      width: dimension,
      height: dimension,
      shape: shape,
    );
  }
}
