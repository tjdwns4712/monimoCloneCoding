import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:monimo/pages/homePage.dart';

class moneySend extends StatefulWidget {
  const moneySend({super.key});

  @override
  State<moneySend> createState() => _moneySendState();
}

class _moneySendState extends State<moneySend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            '송금',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ),
        body: Padding(padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    height:  65,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        width: 120,
                        height: 50,
                      )
                    ],)
                  ),
                ],
              )
            ],
          ),
        )
        )
        );
  }
}
