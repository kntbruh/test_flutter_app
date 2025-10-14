import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/data/notifier.dart';
import 'package:my_app/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initMode();
    super.initState();
  }

  void initMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final bool? mode = prefs.getBool(KConstants.modeKey);

    isDarkModeNotifier.value = mode ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, selectedMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueGrey,
              brightness: selectedMode ? Brightness.light : Brightness.dark,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
