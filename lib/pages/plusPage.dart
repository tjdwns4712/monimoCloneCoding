import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class plusPage extends StatefulWidget {
  const plusPage({super.key});

  @override
  State<plusPage> createState() => _plusPageState();
}

class _plusPageState extends State<plusPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
