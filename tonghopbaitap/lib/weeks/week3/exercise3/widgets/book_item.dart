import 'package:flutter/material.dart';
import '../models/book.dart';

class BookItem extends StatelessWidget {
  final Book book;
  final VoidCallback onBorrow;

  const BookItem({super.key, required this.book, required this.onBorrow});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(book.title),
        subtitle: Text(
          book.isBorrowed ? 'Đã được mượn' : 'Chưa được mượn',
          style: TextStyle(color: book.isBorrowed ? Colors.red : Colors.green),
        ),
        trailing: ElevatedButton(
          onPressed: book.isBorrowed ? null : onBorrow,
          child: const Text('Mượn'),
        ),
      ),
    );
  }
}
