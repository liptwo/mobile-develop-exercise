import 'package:flutter/material.dart';
import 'models/book.dart';
import 'models/user.dart';
import 'widgets/book_item.dart';

class Week3Exercise3 extends StatefulWidget {
  const Week3Exercise3({super.key});

  @override
  State<Week3Exercise3> createState() => _Week3Exercise3State();
}

class _Week3Exercise3State extends State<Week3Exercise3> {
  final List<Book> books = [
    Book(id: 'b1', title: 'Lập trình Flutter'),
    Book(id: 'b2', title: 'Cấu trúc dữ liệu'),
    Book(id: 'b3', title: 'OOP trong Dart'),
  ];

  final List<User> users = [
    User(id: 'u1', name: 'Nguyễn Văn A'),
    User(id: 'u2', name: 'Trần Thị B'),
  ];

  User? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài 3')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButton<User>(
              hint: const Text('Chọn người dùng'),
              value: selectedUser,
              isExpanded: true,
              items: users.map((user) {
                return DropdownMenuItem(value: user, child: Text(user.name));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedUser = value;
                });
              },
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: books
                    .map(
                      (book) => BookItem(
                        book: book,
                        onBorrow: () {
                          if (selectedUser == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Vui lòng chọn người dùng'),
                              ),
                            );
                            return;
                          }

                          setState(() {
                            book.isBorrowed = true;
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${selectedUser!.name} đã mượn "${book.title}"',
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
