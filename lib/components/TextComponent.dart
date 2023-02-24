import 'package:flutter/material.dart';

class TextTitleComponent extends StatelessWidget {
  final String text;
  const TextTitleComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 30));
  }
}
