import 'package:flutter/material.dart';

class Animation1Implicit extends StatefulWidget {
  const Animation1Implicit({super.key});

  @override
  State<Animation1Implicit> createState() => _Animation1ImplicitState();
}

class _Animation1ImplicitState extends State<Animation1Implicit> {
  @override
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 800),
        alignment: flag ? Alignment.bottomRight : Alignment.topCenter,
        curve: Curves.ease,
        child: GestureDetector(
          onTap: () {
            flag = !flag;
            setState(() {});
          },
          child: AnimatedContainer(
            curve: Curves.ease,
            width: flag ? 50 : 100,
            height: 50,
            duration: const Duration(milliseconds: 800),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(flag ? 200 : 0),
            ),
          ),
        ),
      ),
    );
  }
}
