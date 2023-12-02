// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:fandytesting/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(), // Gunakan Navbar dalam appBar
      body: Center(
        child: Text(
          "Ini Adalah Halaman Pertama",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
