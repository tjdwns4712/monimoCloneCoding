import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class jellyPage extends StatefulWidget {
  const jellyPage({super.key});

  @override
  State<jellyPage> createState() => _jellyPageState();
}

class _jellyPageState extends State<jellyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
    );
  }
}
