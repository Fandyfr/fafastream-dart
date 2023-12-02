// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pencarian extends StatefulWidget {
  const Pencarian({Key? key}) : super(key: key);

  @override
  State<Pencarian> createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Color(0x00000000),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cari nama Film, Anime, TV Series", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.00,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: Tokyo Revenger",
                ),
            ),
          ],
        ),
      ),
    );
  }
}
