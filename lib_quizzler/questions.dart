class Question {
  String questionText;
  bool questionAnswer;
  //  Question({String q, bool a}) {
  // Question({this.questionText,this.questionAnswer});
  // or Question(this.questionText,this.questionAnswer);
  // above two are complete constructors
  Question(String q, bool a) {
    //curly braces inside () is not mandatory ig
    questionText = q;
    questionAnswer = a;
  }
}
