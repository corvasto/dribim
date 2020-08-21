import 'package:flutter/material.dart';

class DribimContentNav extends StatelessWidget {
  DribimContentNav({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  this.icon,
                  color: Colors.blue,
                  size: 22.0,
                ),
                padding: EdgeInsets.all(15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10,
              ),
            ),
            Text(
              this.title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 0.8,
          indent: 24,
          endIndent: 24,
        ),
      ],
    );
  }
}
