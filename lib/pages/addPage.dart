import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class addPage extends StatefulWidget {
  const addPage({super.key});

  @override
  State<addPage> createState() => _addPageState();
}

class _addPageState extends State<addPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightGreen,
    );
  }
}
