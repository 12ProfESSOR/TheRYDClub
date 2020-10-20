import 'package:TheRYDClub/explore/explore_categories/Business_Oppurtunities.dart';
import 'package:TheRYDClub/explore/explore_categories/SelfHelp_Books.dart';
import 'package:TheRYDClub/explore/explore_categories/The_Morning_Masters.dart';

import 'package:TheRYDClub/theme.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<String> _listItem = [
    'images/banner1.jpg',
    'images/banner2.jpg',
    'images/banner3.jpg',
    'images/banner4.jpg',
    'images/banner5.jpg',
    'images/banner6.jpg',
    'images/banner7.jpg',
    'images/banner8.jpg',
  ];

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
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.2),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Lifestyle Sale",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            "Shop Now",
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem
                        .map(
                          (item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item), fit: BoxFit.cover),
                              ),
                              child: Transform.translate(
                                offset: Offset(0, 50),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 63),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        if (item == "images/banner1.jpg") {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BusinessOppurtunities(),
                                            ),
                                          );
                                        } else if (item ==
                                            "images/banner2.jpg") {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SelfHelpBooks(),
                                            ),
                                          );
                                        } else if (item ==
                                            "images/banner3.jpg") {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TheMorningMasters(),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text('CLICK HERE'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
