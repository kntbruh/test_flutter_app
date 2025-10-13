import 'package:flutter/material.dart';
import 'package:my_app/views/widget_tree.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

late TextEditingController usernameController;
late TextEditingController passwordController;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usernameConfirm = '123';
  String passwordConfirm = '123';

  @override
  void initState() {
    usernameController = TextEditingController(text: '123');
    passwordController = TextEditingController(text: '123');
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                HeroWidget(title: widget.title),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Username',
                  ),
                  onEditingComplete: () {},
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Password',
                  ),
                  onEditingComplete: () {},
                ),
                SizedBox(height: 20),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    onLogin();
                  },
                  child: Text(widget.title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLogin() {
    if (usernameController.text == usernameConfirm &&
        passwordController.text == passwordConfirm) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
