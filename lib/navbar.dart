// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, avoid_print, unused_import, non_constant_identifier_names, unused_element, override_on_non_overriding_member

import 'package:fandytesting/homepage.dart';
import 'package:fandytesting/pencarian.dart';
import 'package:fandytesting/test.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget  {

  const Navbar({Key? key}) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navbar
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.yellow,
            tabBackgroundColor: Colors.grey.shade900,
            padding: EdgeInsets.all(16),
            gap: 8,
            onTabChange: (index) {
              myCurrentIndex = index;
            },
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                // text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_month_outlined,
                // text: 'Schedule',
              ),
              GButton(
                icon: Icons.list_alt_outlined,
                // text: 'Akun',
              ),
              GButton(
                icon: Icons.schedule_outlined,
                // text: 'Unduhan',
              ),
              GButton(
                icon: Icons.notifications_none_outlined,
                // text: 'Pengaturan',
              ),
            ],
          ),
        ),
      ),
      body: _getPage(myCurrentIndex),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Navbar();
      case 1:
        return Pencarian();
      // Tambahkan case untuk halaman lain di sini jika diperlukan
      default:
        return HomePage();
    }
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
