import 'package:flutter/material.dart';
import 'package:monimo/pages/addPage.dart';
import 'package:monimo/pages/goodsPage.dart';
import 'package:monimo/pages/homePage.dart';
import 'package:monimo/pages/mypagePgae.dart';
import 'package:monimo/pages/plusPage.dart';

class bottomBarPage extends StatefulWidget {
  const bottomBarPage({super.key});

  @override
  State<bottomBarPage> createState() => _bottomBarPageState();
}

class _bottomBarPageState extends State<bottomBarPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const homePage(),
    const mypagePage(),
    const goodsPage(),
    const plusPage(),
    const addPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: '상품',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gpp_good),
              label: '혜택',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '더보기',
            ),
          ],
          iconSize: 30,
        ),
      ),
    );
  }
}
