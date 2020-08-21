import 'package:flutter/material.dart';
import 'package:dribim/bookingappui/widgets/dribim_rating.dart';
import 'package:dribim/bookingappui/widgets/dribim_traveldetails.dart';
import 'package:dribim/bookingappui/widgets/dribim_button.dart';

class BookingAppUIDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          // To make the image fills the app bar (try to change it to `false` and see the difference).
          extendBodyBehindAppBar: true,

          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              iconSize: 38,
              onPressed: () => Navigator.pop(context, false), // Go back on pressed.
            ),
           
            // this is to make sure the app bar is transparent, and the image fills it.
            elevation: 0.0,
            backgroundColor: Colors.transparent, 

            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => print("Action menu tapped"),
                  child: Icon(
                    Icons.menu,
                    size: 32.0,
                  ),
                ),
              ),
            ],
          ),
          body: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/singapore.jpg",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white,
                  ),

                  // The `height` and `witdh` is in the percentage of the screen's height and widht respectively.
                  height: MediaQuery.of(context).size.height * 0.475, // 47.5% of the screen height.
                  width: MediaQuery.of(context).size.width, // 100% of the screen width.

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          "Singapore",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DribimRating(rating: 4.7, icon: Icons.card_travel),
                          DribimTravelDetails(
                            title: "Travel to Singapore",
                            description: "Duration 1 hour",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Color(0xff1e4383),
                  ),

                  // The `height` and `witdh` is in the percentage of the screen's height and widht respectively.
                  height: MediaQuery.of(context).size.height * 0.15, // 15% of the screen height.
                  width: MediaQuery.of(context).size.width, // 100% of the screen width.
                  
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 24.0,
                            right: 24.0,
                            top: 28.0,
                            bottom: 24.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2,305",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Properties Found",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(
                            left: 24.0,
                            right: 24.0,
                            top: 28.0,
                            bottom: 24.0,
                          ),
                          child: DribimButton(
                            title: "See All",
                            color: Colors.blue[50],
                            textColor: Colors.blue,
                            onTap: () => print("See all button tapped"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
