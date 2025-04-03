import 'package:flutter/material.dart';

class DirtyScreenNineteen extends StatelessWidget {
  const DirtyScreenNineteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #19"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BookTile(
                title: "The Great Gatsby",
                author: "F. Scott Fitzgerald",
                description:
                    'A novel set in the Roaring Twenties, telling the story of the mysterious millionaire Jay Gatsby and his obsession with Daisy Buchanan.'),
            BookTile(
                title: "1984",
                author: "George Orwell",
                description:
                    'A dystopian social science fiction novel and cautionary tale, warning the dangers of totalitarianism and excessive political authority.'),
            BookTile(
                title: "To Kill a Mockingbird",
                author: "Harper Lee",
                description:
                    'A novel about the serious issues of rape and racial inequality, but it is also filled with warmth and humor.'),
            BookTile(
                title: "Pride and Prejudice",
                author: "Jane Austen",
                description:
                    'A romantic novel that charts the emotional development of the protagonist Elizabeth Bennet, who learns the error of making hasty judgments.'),
          ],
        ),
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String author;
  final String title;
  final String description;
  const BookTile(
      {required this.title,
      required this.author,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.book),
            title: Text(title),
            subtitle: Text(author),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
