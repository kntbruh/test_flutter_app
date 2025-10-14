import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/views/widgets/container_widget.dart';

import 'package:my_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.first,
      KValue.second,
      KValue.third,
      KValue.fourth,
      KValue.fifth,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home'),
            Column(
              children: List.generate(
                list.length,
                (index) => ContainerWidget(
                  title: list.elementAt(index),
                  description: 'long long description',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
