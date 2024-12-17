import 'package:books/book_page.dart';
import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images(this.book, {super.key});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
           IconButton(icon: Icon(Icons.download_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.share_outlined), onPressed: () {}),
        ],
        title: const Text('Favorite books'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 450,
              width: 300,
              child: Image(image: AssetImage(book.image)),
            ),
            Text(book.author),
            Text(book.name),
            Text(book.genre),
            Text(book.copy.toString()),
            Text(book.translator),
          ],
        ),
      ),
    );
  }
}
