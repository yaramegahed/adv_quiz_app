import 'package:adv_quiz_app/features/questions/view/questions_view.dart';
import 'package:flutter/material.dart';

class CustomStartButton extends StatefulWidget {
  const CustomStartButton({
    super.key,
  });

  @override
  State<CustomStartButton> createState() => _CustomStartButtonState();
}

class _CustomStartButtonState extends State<CustomStartButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        onPressed: () {
          setState(() {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => QuestionsView(),
              ),
            );
          });
        },
        label: Text(
          "start quiz",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ));
  }
}
