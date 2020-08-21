import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';

class DribimDesginList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: 10,
      ),
      // For now, the design list is hardcoded here.
      // We may want to put it in a json file and build the list here.
      ListViewItem(
        title: 'Booking App UI',
        authorName: 'Giga Tamarashvili',
        route: '/bookingappui',
        dribbleLink: 'https://dribbble.com/shots/7109824-Booking-App-UI',
      ),
      ListViewItem(
        title: '(Hacker) News',
        authorName: 'Vlad Grama',
        route: '/hackernews',
        dribbleLink: 'https://dribbble.com/shots/14055853-Daily-UI-094-Hacker-News',
      ),
      // ListViewItem(
      //   title: "[Dribble design title]",
      //   authorName: "[The author name]",
      //   route: "[the navigation route, see `main.dart`]",
      //   dribbleLink: "[URL to the design]",
      // ),
    ]);
  }
}

class ListViewItem extends StatelessWidget {
  ListViewItem({
    Key key,
    this.title,
    this.authorName,
    this.route,
    this.dribbleLink,
  }) : super(key: key);

  final String title;
  final String authorName;
  final String route;
  final String dribbleLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue[50],
      onTap: () => Navigator.pushNamed(context, this.route),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          this.title,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "by ",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.62,
                                child: Text(
                                  this.authorName,
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "-",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Elusive.heart,
                        size: 35.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 2.0,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
