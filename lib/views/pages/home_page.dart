import 'package:flutter/material.dart';
import 'package:my_app/data/constants.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: 'Home'),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card', style: KTextStyle.titleText),
                    Text(
                      'this is description',
                      style: KTextStyle.descriptionText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
