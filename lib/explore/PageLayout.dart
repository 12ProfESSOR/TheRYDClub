import 'package:flutter/material.dart';
import 'package:TheRYDClub/explore/BooksDetails.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksLayout extends StatefulWidget {
  @override
  _BooksLayoutState createState() => _BooksLayoutState();
}

class _BooksLayoutState extends State<BooksLayout> {
  @override
  Widget build(BuildContext context) {
    final BooksDetails booksDetails = ModalRoute.of(context).settings.arguments;
    _launchURL() async {
      var url = booksDetails.link;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not Launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(booksDetails.name),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('images/banner1.jpg'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.red,
              child: Text(booksDetails.detail),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            height: 30.0,
            child: RaisedButton(
              color: Colors.amber,
              onPressed: (_launchURL),
              child: Text('BUY NOW'),
              elevation: 2,
            ),
          ),
        ],
      ),
    );
  }
}
