import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

class DribimNews extends StatelessWidget {
  DribimNews({
    Key key,
    this.id,
    this.title,
    this.site,
    this.by,
    this.timeAgo,
    this.likeCount: 0,
    this.commentCount: 0,
  }) : super(key: key);

  final String id;
  final String title;
  final String site;
  final String by;
  final String timeAgo;
  final int likeCount;
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(24.0, 5.0, 24.0, 24.0),
        child: Row(
          children: [
            // Number in the black circle
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5.0),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Text(
                this.id.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              children: [],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.title,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125,
                          child: Text(
                            this.site,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[400],
                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Wrap(
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  "${this.timeAgo} - by ",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  this.by,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue[200],
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 12.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              _buildButtonAction(
                                icon: Typicons.thumbs_up,
                                color: Colors.lightBlue[300],
                                message: this.likeCount.toString(),
                              ),
                              Container(
                                width: 30.0,
                              ),
                              _buildButtonAction(
                                icon: Typicons.comment,
                                color: Colors.orange[300],
                                message: this.commentCount.toString(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: _buildButtonAction(
                            icon: Icons.bookmark_border,
                            color: Colors.black,
                            message: null,
                            iconSize: 26.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell _buildButtonAction({
    IconData icon,
    Color color,
    String message,
    double iconSize: 23.0,
  }) {
    return InkWell(
      onTap: () => print("action button tapped"),
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        child: Row(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: color,
            ),
            message == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      message,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
