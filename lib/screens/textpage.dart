import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  final String textK;

  const TextPage({super.key, required this.textK});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          textK,
        ),
      ),
    );
  }
}
