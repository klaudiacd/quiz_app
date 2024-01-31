export 'Question.dart';
class Question {
  String question;
  List<String> options;
  String correctAnswer;

  Question({required this.question, required this.options, required this.correctAnswer});
}
