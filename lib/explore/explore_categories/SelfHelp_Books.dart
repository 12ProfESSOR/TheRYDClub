import 'package:TheRYDClub/explore/BooksList.dart';
import 'package:flutter/material.dart';
import 'package:TheRYDClub/theme.dart';

class SelfHelpBooks extends StatefulWidget {
  @override
  _SelfHelpBooksState createState() => _SelfHelpBooksState();
}

class _SelfHelpBooksState extends State<SelfHelpBooks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text('EXPLORE'),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: selectedColor,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('images/banner1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(onTap: () {}, child: BooksList()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
