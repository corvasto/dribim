import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dribim/dribim_design_list.dart';
import 'bookingappui/screens/bookingappui_home.dart';
import 'hackernews/screens/hackernews_home.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dribim',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/bookingappui': (context) => BookingAppUIHome(),
        '/hackernews': (context) => HackerNewsHome(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          'Dribim',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      // The list of the designs is here
      body: DribimDesginList(),
    );
  }
}
