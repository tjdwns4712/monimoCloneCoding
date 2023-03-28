import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class mypagePage extends StatefulWidget {
  const mypagePage({super.key});

  @override
  State<mypagePage> createState() => _mypagePageState();
}

class _mypagePageState extends State<mypagePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellowAccent,
    );
  }
}
