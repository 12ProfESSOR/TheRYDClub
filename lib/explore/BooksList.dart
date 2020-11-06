import 'package:TheRYDClub/explore/BooksDetails.dart';
import 'package:TheRYDClub/explore/PageLayout.dart';
import 'package:flutter/material.dart';

class BooksList extends StatefulWidget {
  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: ListView.builder(
        itemCount: booksDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BooksLayout(),
                    settings: RouteSettings(
                      arguments: booksDetails[index],
                    ),
                  ),
                );
              },
              child: ListTile(
                title: Text(booksDetails[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}
