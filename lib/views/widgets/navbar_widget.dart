import 'package:flutter/material.dart';
import 'package:my_app/data/notifier.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedIndex: selectedPage,
          onDestinationSelected: (index) {
            selectedPageNotifier.value = index;
          },
        );
      },
    );
  }
}
