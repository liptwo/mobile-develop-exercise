import 'package:flutter/material.dart';

void main() => runApp(LibraryApp());

class LibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản lý Thư viện',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: MainNavigationScreen(),
    );
  }
}

// Lớp dữ liệu mẫu cho Sách
class Book {
  String name;
  bool isBorrowed;
  Book({required this.name, this.isBorrowed = false});
}

class MainNavigationScreen extends StatefulWidget {
  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;
  String _staffName = "Nguyen Van A";

  // Danh sách dữ liệu dùng chung toàn ứng dụng
  List<Book> _books = [
    Book(name: "Lập trình Flutter", isBorrowed: true),
    Book(name: "Cấu trúc dữ liệu", isBorrowed: false),
    Book(name: "Cơ sở dữ liệu", isBorrowed: true),
  ];

  List<String> _staffs = ["Nguyen Van A", "Tran Thi B", "Le Van C"];

  // Hàm điều hướng
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Danh sách các màn hình tương ứng với Tab
    final List<Widget> _screens = [
      _buildHomeScreen(),
      _buildBookListScreen(),
      _buildStaffScreen(),
    ];

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue[800],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Quản lý'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'DS Sách'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Nhân viên'),
        ],
      ),
    );
  }

  // --- MÀN HÌNH 1: QUẢN LÝ (Giao diện chính theo mẫu) ---
  Widget _buildHomeScreen() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Hệ thống\nQuản lý Thư viện',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Phần Nhân viên
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nhân viên hiện tại:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      _staffName,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _showChangeStaffDialog(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Đổi"),
                ),
              ],
            ),
            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sách đang mượn:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),

            // Danh sách sách rút gọn
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.builder(
                  itemCount: _books.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      title: Text(_books[index].name),
                      value: _books[index].isBorrowed,
                      activeColor: Colors.red,
                      onChanged: (val) =>
                          setState(() => _books[index].isBorrowed = val!),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => _showAddBookDialog(),
              icon: const Icon(Icons.add),
              label: const Text("Thêm Sách"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                foregroundColor: Colors.white,
                minimumSize: const Size(150, 45),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- MÀN HÌNH 2: DANH SÁCH SÁCH (CRUD) ---
  Widget _buildBookListScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tất cả sách"),
        backgroundColor: Colors.blue[100],
      ),
      body: ListView.separated(
        itemCount: _books.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.menu_book, color: Colors.blue),
            title: Text(_books[index].name),
            subtitle: Text(
              _books[index].isBorrowed
                  ? "Trạng thái: Đã mượn"
                  : "Trạng thái: Sẵn có",
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.orange),
                  onPressed: () => _showEditBookDialog(index),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _deleteBook(index),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddBookDialog,
        child: const Icon(Icons.add),
      ),
    );
  }

  // --- MÀN HÌNH 3: NHÂN VIÊN ---
  Widget _buildStaffScreen() {
    return Scaffold(
      appBar: AppBar(title: const Text("Danh sách nhân viên")),
      body: ListView.builder(
        itemCount: _staffs.length,
        itemBuilder: (context, index) => ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: Text(_staffs[index]),
          trailing: _staffName == _staffs[index]
              ? const Icon(Icons.check_circle, color: Colors.green)
              : null,
          onTap: () => setState(() => _staffName = _staffs[index]),
        ),
      ),
    );
  }

  // --- CÁC HÀM XỬ LÝ LOGIC ---

  void _showAddBookDialog() {
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Thêm sách mới"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: "Nhập tên sách"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Hủy"),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                setState(() => _books.add(Book(name: controller.text)));
                Navigator.pop(context);
              }
            },
            child: const Text("Lưu"),
          ),
        ],
      ),
    );
  }

  void _showEditBookDialog(int index) {
    TextEditingController controller = TextEditingController(
      text: _books[index].name,
    );
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Sửa tên sách"),
        content: TextField(controller: controller),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Hủy"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() => _books[index].name = controller.text);
              Navigator.pop(context);
            },
            child: const Text("Cập nhật"),
          ),
        ],
      ),
    );
  }

  void _deleteBook(int index) {
    setState(() => _books.removeAt(index));
  }

  void _showChangeStaffDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Chọn nhân viên trực"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: _staffs
              .map(
                (name) => ListTile(
                  title: Text(name),
                  onTap: () {
                    setState(() => _staffName = name);
                    Navigator.pop(context);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
