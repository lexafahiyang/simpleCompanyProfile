import 'package:flutter/material.dart';
import 'page_one.dart'; // Import file PageOne.dart
import 'page_two.dart'; // Import file PageTwo.dart

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak Perusahaan'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('Telepon: +62-815-7114-195'),
          ),
          ListTile(
            title: Text('Email: info@jtaexpress.com'),
          ),
          ElevatedButton(
            onPressed: () {
              // Tambahkan kode untuk menangani tindakan hubungi disini
            },
            child: Text('Hubungi Kami'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageOne()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwo()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Profil Perusahaan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Kontak Perusahaan',
          ),
        ],
      ),
    );
  }
}
