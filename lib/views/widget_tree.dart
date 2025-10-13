import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/data/notifier.dart';
import 'package:my_app/views/pages/profile_page.dart';
import 'package:my_app/views/widgets/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/home_page.dart';
import 'pages/settings_page.dart';

List<Widget> pageList = [HomePage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterApp'),
        leading: IconButton(
          icon: Icon(
            isDarkModeNotifier.value == false
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          onPressed: () async {
            isDarkModeNotifier.value = !isDarkModeNotifier.value;
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();

            await prefs.setBool(KConstants.modeKey, isDarkModeNotifier.value);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfilePage(title: 'Profile');
                  },
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pageList.elementAt(value);
        },
      ),
    );
  }
}
