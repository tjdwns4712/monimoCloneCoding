import 'package:flutter/material.dart';
import 'package:monimo/pages/bottomBarPage.dart';
import 'package:monimo/pages/startSplash.dart';

void main() {
  runApp(const monimo());
}

class monimo extends StatelessWidget {
  const monimo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'monimo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const startSplash(), // 시작 실행화면
        '/bottomBarPage': (context) => const bottomBarPage(), // 하단바
      },
    );
  }
}
