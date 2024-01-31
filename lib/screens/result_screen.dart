import 'package:flutter/material.dart';
import 'package:europa_quiz/screens/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final String playerName;
  final int correctAnswers;
  final int totalQuestions;

  ResultScreen({required this.playerName, required this.correctAnswers, required this.totalQuestions});

  String getResultMessage() {
    double percentage = (correctAnswers / totalQuestions) * 100;

    if (percentage < 30) {
      return 'Jest źle';
    } else if (percentage < 50) {
      return 'Mogło być lepiej';
    } else if (percentage < 70) {
      return 'Całkiem nieźle!';
    } else if (percentage < 95) {
      return 'Super';
    } else {
      return 'Jesteś pro!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wynik quizu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$playerName, Twój wynik: $correctAnswers/$totalQuestions. ${getResultMessage()}',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen(playerName: playerName)),
                      (route) => false,
                );
              },
              child: Text('Zagraj ponownie'),
            ),
          ],
        ),
      ),
    );
  }
}
