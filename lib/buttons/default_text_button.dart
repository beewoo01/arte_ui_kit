import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String title;
  final double? shape;
  final VoidCallback callback;

  const DefaultTextButton({
    super.key,
    required this.title,
    required this.callback,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        this.backgroundColor ?? Theme.of(context).colorScheme.primary;

    final textColor = this.textColor ?? Theme.of(context).colorScheme.onPrimary;

    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: callback,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(shape ?? 0),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight:
                Theme.of(context).textTheme.labelLarge?.fontWeight ??
                FontWeight.w400,
          ),
        ),
      ),
    );
  }

  factory DefaultTextButton.fullWidth({
    required String title,
    required VoidCallback callback,
    Color? backgroundColor,
    Color? textColor,
    double? height,
    double? shape,
  }) {
    return DefaultTextButton(
      title: title,
      callback: callback,
      width: double.infinity,
      height: height,
      backgroundColor: backgroundColor,
      textColor: textColor,
      shape: shape,
    );
  }

  factory DefaultTextButton.square({
    required String title,
    required VoidCallback callback,
    double? dimension,
    Color? backgroundColor,
    Color? textColor,
    double? shape,
  }) {
    return DefaultTextButton(
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
