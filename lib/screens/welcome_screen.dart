import 'package:flutter/material.dart';
import 'package:europa_quiz/screens/quiz_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Witaj w European Capitals Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Witaj w quizie o stolicach Europy!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                controller: _nameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Wpisz swoje imię',
                ),
                maxLength: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String playerName = _nameController.text.isNotEmpty ? _nameController.text : "Gracz";
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen(playerName: playerName)),
                );
              },
              child: Text('Rozpocznij'),
            ),
          ],
        ),
      ),
    );
  }
}
