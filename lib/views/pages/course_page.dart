import 'package:flutter/material.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

import 'login_page.dart';

late TextEditingController usernameController;
late TextEditingController passwordController;

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [HeroWidget(title: 'Course')]),
          ),
        ),
      ),
    );
  }
}
