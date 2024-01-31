import 'package:europa_quiz/models/Question.dart';
import 'dart:math';

List<Question> getQuestions() {
  Random random = Random();
  List<Question> questions = [
    Question(
      question: 'Stolica Francji to?',
      options: ['Paryż', 'Berlin', 'Madryt', 'Londyn']..shuffle(random),
      correctAnswer: 'Paryż',
    ),
    Question(
      question: 'Stolica Włoch to?',
      options: ['Warszawa', 'Rzym', 'Ateny', 'Praga']..shuffle(random),
      correctAnswer: 'Rzym',
    ),
    Question(
      question: 'Stolica Hiszpanii to?',
      options: ['Madryt', 'Rzym', 'Lizbona', 'Barcelona']..shuffle(random),
      correctAnswer: 'Madryt',
    ),
    Question(
      question: 'Stolica Rosji to?',
      options: ['Kijów', 'Berlin', 'Paryż', 'Moskwa']..shuffle(random),
      correctAnswer: 'Moskwa',
    ),
    Question(
      question: 'Stolica Niemiec to?',
      options: ['Frankfurt', 'Monachium', 'Berlin', 'Hamburg']..shuffle(random),
      correctAnswer: 'Berlin',
    ),
    Question(
      question: 'Stolica Polski to?',
      options: ['Gdańsk', 'Wrocław', 'Warszawa', 'Kraków']..shuffle(random),
      correctAnswer: 'Warszawa',
    ),
    Question(
      question: 'Stolica Wielkiej Brytanii to?',
      options: ['Londyn', 'Manchester', 'Edynburg', 'Birmingham']..shuffle(random),
      correctAnswer: 'Londyn',
    ),
    Question(
      question: 'Stolica Ukrainy to?',
      options: ['Lwów', 'Charków', 'Kijów', 'Donieck']..shuffle(random),
      correctAnswer: 'Kijów',
    ),
    Question(
      question: 'Stolica Szwajcarii to?',
      options: ['Genewa', 'Zurych', 'Lozanna', 'Berno']..shuffle(random),
      correctAnswer: 'Berno',
    ),
    Question(
      question: 'Stolica Szwecji to?',
      options: ['Malmö', 'Uppsala', 'Goteborg', 'Sztokholm']..shuffle(random),
      correctAnswer: 'Sztokholm',
    ),
  ];

  // Losowe przetasowanie listy pytań
  questions.shuffle(Random());

  return questions;
}