import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    GoogleMapWidget(), // Widget yang menampilkan peta Google
    CompanyProfileWidget(), // Widget untuk profil perusahaan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Peta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Profil Perusahaan',
          ),
        ],
      ),
    );
  }
}

class GoogleMapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Isi dengan kode Google Map sebelumnya
    return Center(
      child: Text('Ini adalah halaman peta Google.'),
    );
  }
}

class CompanyProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Isi dengan informasi profil perusahaan
    return Center(
      child: Text('Ini adalah halaman profil perusahaan JTA Express.'),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PageTwo(),
  ));
}
