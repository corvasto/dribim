import 'package:flutter/material.dart';

class DribimDebitCardVisa extends StatelessWidget {
  DribimDebitCardVisa({Key key, this.size: 32.0}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: this.size,
              width: this.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: this.size/3),
            child: Container(
              height: this.size,
              width: this.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
