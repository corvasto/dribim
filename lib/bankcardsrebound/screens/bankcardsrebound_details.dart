import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard_horiz.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_button.dart';

class BankCardsReboundDetails extends StatelessWidget {
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(12.0),
            height: MediaQuery.of(context).size.height * 0.28,
            child: DribimDebitCardHoriz(
              colorTop: Colors.pink[200],
              colorBottom: Colors.blue[300],
              cardNumber: "1456    ****    ****    8193",
              cardHolderName: "Jonathan Ofwasi",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 8.0),
            child: Text(
              "Current balance",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: Text(
              "\$ 143,317",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          Container(
            height: 24.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry date",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 6.0,
                      ),
                      Text(
                        "08/2050",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Status",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 6.0,
                      ),
                      Container(
                        height: 22.0,
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                        child: Text(
                          "Active",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.green[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 24.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last transaction",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 6.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Nike (Central Park)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "-\$200",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 42.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
            child: DribimButton(
              title: "Request replacement",
              color: Color(0xFF372440),
              borderColor: Colors.black,
              textColor: Colors.white,
              width: 0.7,
              onTap: () => print("Request replacement button tapped"),
            ),
          ),
          Container(
            height: 12.0,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
              child: DribimButton(
                title: "Block card",
                color: Colors.white,
                borderColor: Colors.pink[400],
                textColor: Colors.pink[400],
                width: 0.7,
                onTap: () => print("Block card button tapped"),
              )),
        ],
      ),
    );
  }
}
