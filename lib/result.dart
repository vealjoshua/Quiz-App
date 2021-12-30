import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      return 'You are pretty likeable!';
    } else if (resultScore <= 16) {
      return 'You are... strange.';
    }

    return 'You are so bad.';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
