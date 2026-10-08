import 'package:flutter/material.dart';
import '../pages/formulir_page.dart';
import '../pages/chat_page.dart';
import '../pages/peta_page.dart';
import '../pages/statistik_page.dart';

class KerangkaNavigasi extends StatefulWidget {
  const KerangkaNavigasi({super.key});

  @override
  State<KerangkaNavigasi> createState() => _KerangkaNavigasiState();
}

class _KerangkaNavigasiState extends State<KerangkaNavigasi> {
  int _indeksTerpilih = 0;

  final List<Widget> _halaman = const [
    FormulirPage(),
    ChatPage(),
    PetaPage(),
    StatistikPage(),
  ];

  final List<String> _judul = const [
    'Formulir',
    'Chat',
    'Peta',
    'Statistik',
  ];

  void _pilihTujuan(int indeks) {
    setState(() {
      _indeksTerpilih = indeks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_judul[_indeksTerpilih]),
      ),

      body: _halaman[_indeksTerpilih],

      bottomNavigationBar: NavigationBar(
        selectedIndex: _indeksTerpilih,
        onDestinationSelected: _pilihTujuan,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.assignment),
            label: 'Formulir',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.map),
            label: 'Peta',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart),
            label: 'Statistik',
          ),
        ],
      ),
    );
  }
}