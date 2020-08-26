import 'package:flutter/material.dart';

class DribimButton extends StatelessWidget {
  DribimButton({
    Key key,
    this.title: "tap me",
    this.color,
    this.borderColor,
    this.textColor,
    @override this.onTap,
    this.width: 0.4,
  }) : super(key: key);

  final String title;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final GestureTapCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    var radius = BorderRadius.circular(20.0);
    var borderAndSplashColor = Colors.grey[300];

    return Material(
      color: this.color,
      borderRadius: radius,
      elevation: 0.0,
      child: InkWell(
        borderRadius: radius,
        splashColor: borderAndSplashColor,
        onTap: this.onTap,
        child: Container(
          height: 56.0,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            border: Border.all(
              color: this.borderColor,
            ),
            borderRadius: radius,
          ),
          child: Center(
            child: Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: this.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}