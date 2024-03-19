
import 'package:carrot_market/screens/home/home_screen.dart';
import 'package:carrot_market/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot_market/screens/near_me/near_me_screen.dart';
import 'package:carrot_market/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatting/chatting_screen/chatting_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // IndexedStack - 한번에 전부 로딩 된다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(), // 0
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: '나의 당근'),
        ],
      ),
    );
  }
}