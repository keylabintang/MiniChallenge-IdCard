import 'package:flutter/material.dart';

void main() {
  runApp(const DigitalId());
}

class DigitalId extends StatelessWidget {
  const DigitalId({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalId(),
    );
  }
}
