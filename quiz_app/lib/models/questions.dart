class Questions {

  const Questions(this.quest, this.ans);

  final String quest;
  final List<String> ans;

  List<String> shuffledAns() {
    List<String> shuffledAnswer = List.of(ans);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}