import 'package:flutter/material.dart';

class DribimRating extends StatelessWidget {
  DribimRating({
    Key key,
    this.rating: 0,
    this.icon,
  }) : super(key: key);

  final double rating;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[50],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Icon(
              this.icon,
              color: Colors.orange[300],
              size: 36,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.0),
            height: 42.5,
            width: 42.5,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange[300],
                width: 3.5,
              ),
            ),
            child: Text(
              this.rating.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
