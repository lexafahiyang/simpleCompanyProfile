import 'package:flutter/material.dart';
import 'page_one.dart'; // Import file PageOne.dart
import 'page_three.dart'; // Import file PageThree.dart

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Perusahaan'),
      ),
      body: ListView(
        children: [
          Image.asset(
              'assets/jta.png'), // Ganti dengan path gambar perusahaan Anda
          ListTile(
            title: Text('Nama Perusahaan: JTA Kilat Kuning'),
          ),
          ListTile(
            title: Text('Alamat: Jalan KPAD No. 90'),
          ),
          ListTile(
            title: Text(
              'Profil Perusahaan: JTA Kilat Kuning adalah perusahaan terkemuka dalam bidang teknologi informasi '
              'yang telah melayani pelanggan selama lebih dari dua dekade. Kami berkomitmen untuk memberikan solusi '
              'teknologi inovatif kepada pelanggan kami dan terus-menerus mencari cara untuk memenuhi kebutuhan mereka. '
              'Dengan tim berpengalaman dan berkomitmen, kami memiliki reputasi yang kuat dalam memberikan layanan '
              'dan produk berkualitas kepada pelanggan kami.',
            ),
          ),
          // Tambahkan informasi lainnya sesuai kebutuhan
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
