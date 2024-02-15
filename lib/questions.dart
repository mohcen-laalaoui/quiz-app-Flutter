class Question {
  String questionText;
  bool questionAnswer;

  // Constructor with named parameters and null safety
  Question({
    required String q,
    required bool a,
  })  : questionText = q,
        questionAnswer = a;
}
