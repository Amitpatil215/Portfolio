import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OpenSourceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.only(
          top: 12,
          left: 12,
          right: 12,
        ),
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/flutter_logo.png'),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Cross platform UI toolkit',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text('Updated 2h ago'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.plumbing_outlined),
                SizedBox(width: 10),
                Text(
                  'Pull Requests',
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Text(
                  '13',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 260,
                ),
                child: StaggeredGridView.countBuilder(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                    onTap: () {
                      print(index);
                    },
                    child: Container(
                      color: Colors.amber,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text('$index'),
                        ),
                      ),
                    ),
                  ),
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(2, index.isEven ? 2 : 1),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Implemented Circle avatar fallback image as a forground image.',
                style: TextStyle(
                  fontSize: 20,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  onPressed: () {},
                ),
                Text('12'),
                IconButton(
                  icon: Icon(Icons.mode_comment_outlined),
                  onPressed: () {},
                ),
                Text('5'),
                IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {},
                ),
                Text('30'),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.share_outlined),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
