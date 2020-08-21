import 'package:flutter/material.dart';
import 'package:dribim/hackernews/widgets/dribim_news.dart';
import 'package:dribim/hackernews/widgets/dribim_search.dart';
import 'dart:ui';

class HackerNewsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(128.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 86,
            margin: EdgeInsets.fromLTRB(24.0, 85.0, 24.0, 0.0),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  child: Text(
                    "Top news",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 10.0),
                        alignment: Alignment.centerRight,
                        child: SearchAppBar(),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey[400],
                            size: 28.0,
                          ),
                          onPressed: () => print("menu vertical pressed"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            iconSize: 38.0,
            onPressed: () =>
                Navigator.pop(context, false), // Go back on pressed.
          ),
          elevation: 0.0,
        ),
      ),
      backgroundColor: Colors.white,
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              DribimNews(
                id: "1",
                title: "Can't you just right click?",
                site: "lapdosoftware.com",
                timeAgo: "10h",
                by: "bangontidoer",
                likeCount: 408,
                commentCount: 201,
              ),
              DribimNews(
                id: "2",
                title: "Inline CSS works better in a component world",
                site: "davnicwil.com",
                timeAgo: "1h",
                by: "davnicwil",
                likeCount: 293,
                commentCount: 30,
              ),
              DribimNews(
                id: "3",
                title:
                    "Showing a sunrise/sunset realtime 24/7 with the use of unsecured CCTV cameras",
                site: "driesdepoorter.be",
                timeAgo: "22h",
                by: "driesdeep",
                likeCount: 112,
                commentCount: 32,
              ),
              DribimNews(
                id: "4",
                title: "The AWS Controllers for Kubernetes",
                site: "aws.amazon.com",
                timeAgo: "5h",
                by: "bdcravens",
                likeCount: 120,
                commentCount: 45,
              ),
              DribimNews(
                id: "5",
                title:
                    "How to contact Google SRE by dropping a shell in Cloud SQL",
                site: "offensi.com",
                timeAgo: "12h",
                by: "fanf2",
                likeCount: 114,
                commentCount: 50,
              ),
              DribimNews(
                id: "6",
                title:
                    "Justice League on HBO Max: New teaser, Steppenwolf design and more",
                site: "cnet.com",
                timeAgo: "12h",
                by: "jennifer",
                likeCount: 367,
                commentCount: 221,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30.0,),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Divider(
                  color: Colors.grey,
                  thickness: 4.0,
                  indent: 80.0,
                  endIndent: 80.0,
                ),
              ),
            ],
          ),
          // Blur effect
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: ShaderMask(
              blendMode: BlendMode.modulate,
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(1),
                  ],
                  stops: [0.1, 0.3, 0.6, 1, 0.25],
                  tileMode: TileMode.clamp,
                ).createShader(Offset.zero & bounds.size);
              },
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
