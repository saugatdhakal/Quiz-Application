import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

   Result({ this.totalScore, this.reset});
  String get resultPharse {
    var resultText;
    if (totalScore >= 40) {
      resultText = "You are Intelligent";
    } else if (totalScore >= 20) {
      resultText = "You tried your best";
    } else {
      resultText = "Try your Best";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent[300],
      child: Center(
        child: Column(
          children: [
            Text(
              "The Total Score is",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              totalScore.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              resultPharse,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
              onPressed: reset,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              child: Text(
                "Reset Quiz",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
