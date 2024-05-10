import 'package:flutter/material.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({super.key});

  @override
  State<StarScreen> createState() {
    return _MyStarState();
  }
}

class _MyStarState extends State<StarScreen> {
  List<Color> colorStar = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 68, 164),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 68, 164),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 500),
          for (int i = 0; i < 5; i++)
            IconButton(
              onPressed: () {
                setState(() {
                  for (var j = 0; j <= i; j++) {
                    if (colorStar[j] == Colors.black) {
                      colorStar[j] = Colors.yellow;
                    } else {
                      for (int k = colorStar.length - 1; k > 0; k--) {
                        colorStar[k] = Colors.black;
                      }
                    }
                  }
                });
              },
              icon: Icon(
                Icons.star,
                color: colorStar[i],
                size: 40,
              ),
            ),
        ],
      ),
    );
  }
}
