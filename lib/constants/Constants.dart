import 'package:quize_application/data/Question.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده باز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.currectAnswer = 2;
  firstQuestion.asnwerList = [
    'مسعود رنجبران',
    'دیوید کاپرفیلد',
    'مری مودینی',
    'دیوید بلین'
  ];
  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.currectAnswer = 0;
  secondQuestion.asnwerList = ['هند (شوروی سابق)', 'چین', 'آمریکا', 'روسیه'];
  return [firstQuestion, secondQuestion];
}
