import 'package:flutter/material.dart';
import 'Widget/open_source_card.dart';

class WorkTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TitleText('Past Experience'),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TitleText('Open Source'),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.chevron_right_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 550),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return index == 0
                                ? SizedBox(
                                    width: 8,
                                  )
                                : Row(
                                    children: [
                                      OpenSourceCard(),
                                      SizedBox(width: 10),
                                    ],
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.transparent,
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: double.infinity,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TitleText('Personal Projects'),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.chevron_right_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 550),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return index == 0
                                ? SizedBox(
                                    width: 8,
                                  )
                                : Row(
                                    children: [
                                      OpenSourceCard(),
                                      SizedBox(width: 10),
                                    ],
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String title;

  const TitleText(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
    );
  }
}
