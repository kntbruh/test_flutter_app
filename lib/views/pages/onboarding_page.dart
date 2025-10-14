import 'package:flutter/material.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

import 'login_page.dart';

late TextEditingController usernameController;
late TextEditingController passwordController;

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeroWidget(title: 'hello'),

                SizedBox(height: 20),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Sign Up');
                        },
                      ),
                    );
                  },

                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
