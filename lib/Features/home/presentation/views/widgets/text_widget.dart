import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
    required this.style,
  }) : super(key: key);
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      title,
      style: style,
    );
  }
}
