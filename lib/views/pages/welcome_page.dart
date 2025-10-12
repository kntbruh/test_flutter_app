import 'package:flutter/material.dart';
import 'package:my_app/views/pages/login_page.dart';
import 'package:my_app/views/widget_tree.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(title: 'welcome'),
            Text(
              'Flutter App',
              style: TextStyle(fontSize: 30, letterSpacing: 12.0),
            ),
            SizedBox(height: 20),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Sign Up'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
