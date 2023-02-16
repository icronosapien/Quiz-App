import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.resultScore, required this.resetHandler});

  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You\'re awesome and innnocent';
    } else if (resultScore <= 12) {
      resultText = 'You\'re pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange';
    } else {
      resultText = 'You\' re so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: const Text('Restart Quiz! '))
        ],
      ),
    );
  }
}
