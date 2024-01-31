import 'package:flutter/material.dart';
import 'package:europa_quiz/models/Question.dart';
import 'package:europa_quiz/screens/result_screen.dart';
import 'package:europa_quiz/data/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  final String playerName;

  QuizScreen({required this.playerName});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  List<Question> questions = getQuestions();

  void answerQuestion(String selectedAnswer) {
    if (questions[currentQuestionIndex].correctAnswer == selectedAnswer) {
      setState(() {
        correctAnswers++;
      });
    }

    setState(() {
      currentQuestionIndex++;
    });

    if (currentQuestionIndex == questions.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            playerName: widget.playerName,
            correctAnswers: correctAnswers,
            totalQuestions: questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('European Capitals Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: currentQuestionIndex < questions.length
            ? Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Witaj, ${widget.playerName}!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Pytanie ${currentQuestionIndex + 1}: ${questions[currentQuestionIndex].question}',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Column(
              children: questions[currentQuestionIndex].options.map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () => answerQuestion(option),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(option),
                  ),
                );
              }).toList(),
            ),
          ],
        )
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
