import 'package:flutter/material.dart';
import 'package:TheRYDClub/explore/BooksDetails.dart';

class BooksLayout extends StatefulWidget {
  @override
  _BooksLayoutState createState() => _BooksLayoutState();
}

class _BooksLayoutState extends State<BooksLayout> {
  @override
  Widget build(BuildContext context) {
    final BooksDetails booksDetails = ModalRoute.of(context).settings.arguments;
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
          Container(
            child: Text(booksDetails.detail),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {},
              child: Text('Hello'),
              elevation: 5,
            ),
          ),
        ],
      ),
    );
  }
}
