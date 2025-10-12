import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Column(
        children: [ClipRRect(child: Image.asset('assets/images/os.jpeg'))],
      ),
    );
  }
}
