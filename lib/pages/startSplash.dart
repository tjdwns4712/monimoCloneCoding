import 'package:flutter/material.dart';

class startSplash extends StatefulWidget {
  const startSplash({super.key});

  @override
  State<startSplash> createState() => _startSplashState();
}

class _startSplashState extends State<startSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(0, 70, 248, 1),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  'assets/monimoicon.png',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              const Text(
                'monimo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 2500)).then((value) {
      Navigator.pushReplacementNamed(context, '/bottomBarPage');
    });
  }
}
