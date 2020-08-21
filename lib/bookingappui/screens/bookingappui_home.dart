import 'package:flutter/material.dart';
import 'package:dribim/bookingappui/screens/bookingappui_details.dart';
import 'package:dribim/bookingappui/widgets/dribim_button.dart';
import 'package:dribim/bookingappui/widgets/dribim_content_nav.dart';
import 'package:dribim/bookingappui/widgets/dribim_popularplace.dart';
import 'package:flutter/rendering.dart';

class BookingAppUIHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          iconSize: 38.0,
          onPressed: () => Navigator.pop(context, false), // Go back on pressed.
        ),
        elevation: 0.0,
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 16.0),
              child: Text(
                "Book unique homes and experiences",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 20.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DribimButton(
                  title: "Hotels",
                  color: Colors.orange[300],
                  textColor: Colors.black,
                  width: 0.4,
                  onTap: () => print("Hotels button tapped!"),
                ),
                DribimButton(
                  title: "Flights",
                  color: Colors.white,
                  textColor: Colors.black,
                  width: 0.4,
                  onTap: () => print("Flights button tapped!"),
                ),
              ],
            ),
          ),
          Container(
            height: 20.0,
          ),
          DribimContentNav(
            title: "Where",
            icon: Icons.location_on,
          ),
          DribimContentNav(
            title: "Check-in - Check-out",
            icon: Icons.calendar_today,
          ),
          DribimContentNav(
            title: "1 Adult, 0 Children, 1 Room",
            icon: Icons.person,
          ),
          Container(
            height: 20.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DribimButton(
                  title: "Search",
                  color: Colors.blue[500],
                  textColor: Colors.white,
                  width: 0.9,
                  onTap: () {
                    // Go to the details screen on tap.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingAppUIDetails(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 28.0,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Popular places",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          DribimPopularPlace(
            assetPath: "assets/images/south-africa.jpg",
            title: "Africa",
            description: "12,403 properties",
          ),
        ],
      ),
    );
  }
}
