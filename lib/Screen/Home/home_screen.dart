import 'dart:html';

import 'package:flutter/material.dart';

import 'Widget/tab_buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.mail),
              label: Text('amitgpatil215'),
            ),
            TabButtons(),
          ],
        ),
      ),
    );
  }
}
