import "package:flutter/material.dart";

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreen();
}

class _BookmarkScreen extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bookmark Page'),
          automaticallyImplyLeading: false, // Set this property to false
        ),
        body: Center(
          child: Text('Bookmark Screen', style: TextStyle(fontSize: 40)),
        ));
  }
}
