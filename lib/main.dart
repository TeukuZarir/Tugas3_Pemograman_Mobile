import 'package:flutter/material.dart';
import 'form_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // Daftar halaman
  final List<Widget> _pages = [
    // Halaman 1
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.blueGrey,
          child: Icon(Icons.access_alarm_sharp, size: 100),
        ),
      ],
    ),
    // Halaman 2 layout->column
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.amber,
          child: Column(
            children: [
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
            ],
          ),
        ),
      ],
    ),
    // Halaman 3 layout->row
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.green,
          child: Row(
            children: [
              Icon(Icons.account_circle_outlined, size: 50),
              Icon(Icons.account_circle_outlined, size: 20),
              Icon(Icons.account_circle_outlined, size: 20),
              Icon(Icons.account_circle_outlined, size: 20),
            ],
          ),
        ),
      ],
    ),
    // Halaman 4 (Form dengan TextField + Button)
    const FormPage(),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Praktik 2',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Icon(Icons.account_box, color: Colors.white),
          Icon(Icons.access_alarm_outlined, color: Colors.white),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // biar bisa lebih dari 3 item
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Form'),
        ],
      ),
    );
  }
}
