import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'page_two.dart';
import 'page_three.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final List<String> imageUrls = [
    'assets/jta.png',
    'assets/jne.png',
    'assets/jnt.png',
    'assets/jntc.png',
    'assets/sea2.png',
    'assets/sx.png',
    'assets/nea.png',
    'assets/wpe.png',
    'assets/indahc.png',
    'assets/aa.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perusahaan Logistik Indonesia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Informasi Perusahaan Logistik'),
            CarouselSlider(
              items: imageUrls.map((url) {
                return Image.asset(url);
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwo()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageThree()),
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
