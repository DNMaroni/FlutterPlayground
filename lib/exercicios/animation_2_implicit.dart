import 'package:flutter/material.dart';

class Animation2Implicit extends StatefulWidget {
  const Animation2Implicit({super.key});

  @override
  State<Animation2Implicit> createState() => _Animation2ImplicitState();
}

class _Animation2ImplicitState extends State<Animation2Implicit> {
  List<dynamic> flag = List.generate(30, (index) => true);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: List.generate(
          30,
          (index) => AnimatedAlign(
                alignment: Alignment.topCenter,
                duration: const Duration(milliseconds: 200),
                heightFactor: flag[index] ? 1 : 1.1,
                child: GestureDetector(
                  onTap: () {
                    flag[index] = !flag[index];
                    setState(() {});
                  },
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 330),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Linha teste de numero $index',
                              style: TextStyle(
                                  color:
                                      flag[index] ? Colors.black : Colors.blue),
                            ),
                            AnimatedRotation(
                              duration: const Duration(milliseconds: 200),
                              turns: flag[index] ? 1 : 0.5,
                              curve: Curves.linear,
                              child: Icon(Icons.keyboard_arrow_down_rounded,
                                  color:
                                      flag[index] ? Colors.black : Colors.blue),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRect(
                          child: Align(
                            heightFactor: flag[index] ? 0 : 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 1),
                                      top: BorderSide(width: 1))),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FlutterLogo(
                                    size: 40,
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipislis, ex erat malesed t sapien id egestas pretium. Suspendisse risus augue, vestibulum ut libero a, laoreet iaculis odio. Aliquam scelerisque facilisis velit, eu dictum risus consequat et. Fusce at odio in diam blandit rutrum. Fusce ac venenatis arcu, vel laoreet arcu. Vivamus in eros vel justo aliquet ullamcorper. Nullam id odio egestas, facilisis quam eu, auctor est. Praesent finibus, risus sit amet auctor ultricies, neque elit ultrices tellu.',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
