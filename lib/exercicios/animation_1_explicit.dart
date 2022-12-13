import 'package:flutter/material.dart';

class Animation1Explicit extends StatefulWidget {
  const Animation1Explicit({super.key});

  @override
  State<Animation1Explicit> createState() => _Animation1ExplicitState();
}

class _Animation1ExplicitState extends State<Animation1Explicit>
    with SingleTickerProviderStateMixin {
  bool flag = true;
  late final AnimationController animationController;
  late final Animation<double> animationRadius;
  late final Animation<Alignment> animationAlignment;
  late final Animation<double> animationSize;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));

    animationController.addListener(() {
      setState(() {});
    });

    super.initState();

    animationRadius = Tween<double>(begin: 100, end: 0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.ease));
    animationAlignment = Tween<Alignment>(
            begin: Alignment.bottomRight, end: Alignment.topCenter)
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.ease));
    animationSize = Tween<double>(begin: 50, end: 100).animate(
        CurvedAnimation(parent: animationController, curve: Curves.ease));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Align(
        alignment: animationAlignment.value,
        child: GestureDetector(
          onTap: () {
            if (flag) {
              animationController.forward();
            } else {
              animationController.reverse();
            }

            flag = !flag;
          },
          child: Container(
            width: animationSize.value,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(animationRadius.value),
            ),
          ),
        ),
      ),
    );
  }
}
