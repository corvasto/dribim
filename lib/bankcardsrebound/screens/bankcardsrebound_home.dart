import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard_main.dart';

class BankCardsReboundHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Typicons.left_small),
          iconSize: 32.0,
          onPressed: () => Navigator.pop(context, false), // Go back on pressed.
        ),
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () => print("Avatar menu tapped"),
              // Circle avatar with border
              child: CircleAvatar(
                radius: 19,
                backgroundColor: Colors.purple,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage:
                      AssetImage('assets/images/avatar-male-01.png'),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 16.0),
                child: Text(
                  "Bank Cards",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 68.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 26.0,
                  ),
                  DribimDebitCardMain(
                    colorTop: Colors.pink[200],
                    colorBottom: Colors.blue[300],
                    cardNumber: "1456    ****    ****    8193",
                    cardName: "debit card",
                    cardHolderName: "Jonathan Ofwasi",
                    issuedDate: "14/08/2021",
                  ),
                  Container(
                    width: 16.0,
                  ),
                  DribimDebitCardMain(
                    colorTop: Colors.orange[600],
                    colorBottom: Colors.purple[700],
                    cardName: "credit card",
                    cardNumber: "5278    ****    ****    3571",
                    cardHolderName: "Jonathan Ofwasi",
                    issuedDate: "22/12/2022",
                  ),
                  Container(
                    width: 26.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
