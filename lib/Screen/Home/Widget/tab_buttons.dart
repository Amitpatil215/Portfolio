import 'package:flutter/material.dart';

class TabButtons extends StatelessWidget {
  final TextStyle _tabTextStile = TextStyle(fontSize: 18);
  final SizedBox _sizedBox = SizedBox(width: 30);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Home',
            style: _tabTextStile,
          ),
        ),
        _sizedBox,
        TextButton(
          onPressed: () {},
          child: Text(
            'Work',
            style: _tabTextStile,
          ),
        ),
        _sizedBox,
        TextButton(
          onPressed: () {},
          child: Text(
            'Stats',
            style: _tabTextStile,
          ),
        ),
        _sizedBox,
        TextButton(
          onPressed: () {},
          child: Text(
            'About',
            style: _tabTextStile,
          ),
        ),
      ],
    );
  }
}
