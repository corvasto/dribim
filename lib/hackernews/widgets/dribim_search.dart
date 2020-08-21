import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => new _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = SizedBox();
  bool searchBarTransparent = true;

  Icon actionIcon = Icon(
    Icons.search,
    color: Colors.grey[400],
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          // Search bar.
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.6,
            height: 50,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: this.searchBarTransparent ? Colors.transparent : Colors.white,
            ),
            child: appBarTitle,
          ),
          // The icon search bar.
          Container(
            child: IconButton(
              icon: actionIcon,
              onPressed: () {
                setState(() {
                  if (this.actionIcon.icon == Icons.search) {
                    this.actionIcon = Icon(
                      Icons.close,
                      color: Colors.grey[400],
                    );
                    this.appBarTitle = TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                          size: 24.0,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        labelText: "Search news",
                        labelStyle: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    );
                  } else {
                    this.actionIcon = Icon(
                      Icons.search,
                      color: Colors.grey[400],
                    );
                    this.appBarTitle = SizedBox();
                  }
                  this.searchBarTransparent = !this.searchBarTransparent;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
