import 'package:flutter/material.dart';

class DribimPopularPlace extends StatelessWidget {
  DribimPopularPlace({
    Key key,
    this.assetPath,
    this.title,
    this.description,
  }) : super(key: key);

  final String assetPath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(24.0),
          height: 120,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: new AssetImage(this.assetPath),
                fit: BoxFit.fill,
              )),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 10,
              ),
              Text(
                this.description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: FloatingActionButton(
            elevation: 0.0,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            backgroundColor: Colors.grey[100],
            onPressed: () => print("Arrow icon pressed"),
          ),
        ),
      ],
    );
  }
}
