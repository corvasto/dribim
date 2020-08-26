import 'package:flutter/material.dart';

class DribimDebitCardIssued extends StatelessWidget {
  DribimDebitCardIssued({Key key, this.issuedDate}) : super(key: key);

  final String issuedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date Issued",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
        Text(
          this.issuedDate,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
