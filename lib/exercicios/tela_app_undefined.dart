import 'package:flutter/material.dart';

class AppUndefined extends StatelessWidget {
  const AppUndefined({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(width: 130, height: 130, 'assets/flutter.png'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Column(children: [
                const Text(
                  'Get your Money Under Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Manage your expenses. Seamlessly.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 21),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(83, 100, 223, 1),
                        minimumSize: const Size(
                            300, 50) // put the width and height you want
                        ),
                    onPressed: () {},
                    child: const Text('Sign Up with Email ID')),
                const SizedBox(
                  height: 17,
                ),
                ElevatedButton.icon(
                  label: const Text(
                    'Sign Up with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  icon: const Image(
                    image: AssetImage('assets/google.png'),
                    width: 18,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(
                          300, 50) // put the width and height you want
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: (() {}),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
