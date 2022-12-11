import 'package:flutter/material.dart';

import 'components/tinder_button.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(255, 101, 91, 1),
          Color.fromRGBO(255, 88, 100, 1),
          Color.fromRGBO(253, 41, 123, 1),
        ],
      )),
      child: Center(
        child: SizedBox(
          width: 310,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 180,
              ),
              const Image(
                width: 200,
                image: AssetImage('assets/tinder.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Flexible(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text:
                            'By tapping Create Account or Sign In your agree to our ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                        children: [
                          TextSpan(
                              text: 'Terms',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              text: '. Learn how we process your data in our ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: 'Cookies Policy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              text: '.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TinderButton(
                  text: 'SIGN IN WITH APPLE',
                  icon: Icons.apple_rounded,
                  onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              TinderButton(
                  text: 'SIGN IN WITH FACEBOOK',
                  icon: Icons.facebook_rounded,
                  onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              TinderButton(
                  text: 'SIGN IN WITH PHONE NUMBER',
                  icon: Icons.chat_bubble_rounded,
                  onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Troube Signing In?',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
