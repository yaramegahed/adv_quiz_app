import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onPressed;

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple.shade900,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
            child: Text(
              textAlign: TextAlign.center,
              answerText,
              style: TextStyle(color: Colors.white, fontSize: 18,),
            ),
          ),
        ],
      ),
    );
  }
}
