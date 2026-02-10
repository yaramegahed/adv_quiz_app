import 'package:flutter/material.dart';

import '../widget/custom_start_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/quiz-logo.png",
                color: Color(0xFFB7A0C6),
                height: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            CustomStartButton()
          ],
        ),
      ),
    );
  }
}

