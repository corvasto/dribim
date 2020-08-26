import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard_visa.dart';

class DribimDebitCard extends StatelessWidget {
  DribimDebitCard({
    Key key,
    this.colorTop,
    this.colorBottom,
    this.cardName,
    this.cardNumber,
    this.cardHolderName,
  }) : super(key: key);

  final Color colorTop;
  final Color colorBottom;
  final String cardName;
  final String cardNumber;
  final String cardHolderName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          blendMode: BlendMode.modulate,
          shaderCallback: (Rect bounds) {
            return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  this.colorTop,
                  this.colorBottom,
                ],
                stops: [
                  0.2,
                  0.8
                ]).createShader(bounds);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
        Positioned.fill(
          bottom: 0,
          child: RotatedBox(
            quarterTurns: -1,
            child: Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        this.cardName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Typicons.wifi,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12.0, 12.0, 12.0),
                        child: Text(
                          this.cardNumber, 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CARD HOLDER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9.0,
                                ),
                              ),
                              Container(
                                height: 4.0,
                              ),
                              Text(
                                this.cardHolderName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          DribimDebitCardVisa(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
