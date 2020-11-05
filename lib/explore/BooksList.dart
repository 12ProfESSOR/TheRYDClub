import 'package:TheRYDClub/explore/BooksDetails.dart';
import 'package:flutter/material.dart';

class BooksList extends StatefulWidget {
  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListView.builder(
            itemCount: booksDetails.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(booksDetails[index].name);
            },
          ),
        ],
      ),
    );
  }
}
