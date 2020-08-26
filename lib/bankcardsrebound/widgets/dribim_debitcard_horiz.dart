import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:dribim/bankcardsrebound/widgets/dribim_debitcard_visa.dart';

class DribimDebitCardHoriz extends StatelessWidget {
  DribimDebitCardHoriz({
    Key key,
    this.colorTop,
    this.colorBottom,
    this.cardNumber,
    this.cardHolderName,
  }) : super(key: key);

  final Color colorTop;
  final Color colorBottom;
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
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
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
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.24, 0, 0),
          child: ShaderMask(
              blendMode: BlendMode.modulate,
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.3),
                      Colors.white.withOpacity(1),
                    ],
                    stops: [
                      0.1,
                      0.2,
                      0.9
                    ]).createShader(bounds);
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
        ),
        Positioned.fill(
          bottom: 0,
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
                        "debit card",
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
                        height:8.0,
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
      ],
    );
  }
}
