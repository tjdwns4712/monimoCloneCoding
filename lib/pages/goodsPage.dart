import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class goodsPage extends StatefulWidget {
  const goodsPage({super.key});

  @override
  State<goodsPage> createState() => _goodsPageState();
}

class _goodsPageState extends State<goodsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
    );
  }
}
