import 'package:flutter/material.dart';
import 'package:toss03/home.dart';
import 'songeumpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.grey),
        home: Scaffold(
            body: bodypage[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/tack.png')),
                  label: '혜택',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/geum.png')),
                  label: '송금',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/jojo.png')),
                  label: '주식',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/all.png')),
                  label: '전체',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              selectedItemColor: const Color(0xFF2196F3),
              unselectedItemColor: const Color(0xFF949090),
            ),
            appBar: _selectedIndex != 2 ? appbarhome : null));
  }

  PreferredSizeWidget appbarhome = AppBar(
    elevation: 0,
    centerTitle: false,
    title: Image.asset(
      "assets/images/tossappbar.png",
    ),
    backgroundColor: Colors.white,
    actions: [
      Row(
        children: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 40,
                icon: Image.asset(
                  "assets/images/chat.png",
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  child: const Text(
                    '9+',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
              iconSize: 30,
              color: const Color(0xffB1B8C0),
              icon: const Icon(Icons.chat_bubble),
              onPressed: () {}),
        ],
      )
    ],
  );
}

List bodypage = [
  const Home(),
  const Home(),
  const Songgeum(),
  const Home(),
  const Home(),
];
