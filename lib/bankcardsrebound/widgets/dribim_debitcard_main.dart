import 'package:flutter/material.dart';
import 'package:dribim/bankcardsrebound/screens/bankcardsrebound_details.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard_issued.dart';

class DribimDebitCardMain extends StatelessWidget {
  DribimDebitCardMain({
    Key key,
    this.issuedDate,
    this.colorTop,
    this.colorBottom,
    this.cardName = "debit card",
    this.cardNumber: "1234     ****     ****     5678",
    this.cardHolderName: "John Doe",
  }) : super(key: key);

  final String issuedDate;
  final Color colorTop;
  final Color colorBottom;
  final String cardName;
  final String cardNumber;
  final String cardHolderName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Go to the details screen on tap.
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BankCardsReboundDetails(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DribimDebitCardIssued(issuedDate: this.issuedDate),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 26.0, 0.0, 26.0),
            height: MediaQuery.of(context).size.height * 0.56,
            width: MediaQuery.of(context).size.width * 0.65,
            child: DribimDebitCard(
              colorTop: this.colorTop,
              colorBottom: this.colorBottom,
              cardName: this.cardName,
              cardNumber: this.cardNumber,
              cardHolderName: this.cardHolderName,
            ),
          ),
        ],
      ),
    );
  }
}
