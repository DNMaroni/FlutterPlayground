import 'package:flutter/material.dart';

class TinderButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;
  const TinderButton(
      {required this.text,
      required this.icon,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white, width: 1),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 18,
            color: Colors.white,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
