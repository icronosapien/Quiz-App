import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answerText;

  const Answers({super.key, required this.selectHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
