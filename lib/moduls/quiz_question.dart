class QuizQuestion{
  QuizQuestion(this. text , this.question);

  final String  text ;
  final List<String> question ;

  List getShuffledAnswer(){
    final ShuffledAns = List.of(question);
     ShuffledAns.shuffle();
     return ShuffledAns;
  }

}
