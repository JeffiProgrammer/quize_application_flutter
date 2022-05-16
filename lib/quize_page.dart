import 'package:flutter/material.dart';
import 'package:quize_application/constants/Constants.dart';
import 'package:quize_application/data/Question.dart';
import 'package:quize_application/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSubmited = false;
  int resultAnswer = 0;
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'سوال ${shownQuestionIndex + 1} از ${getQuestionsList().length}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 180.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            ...List.generate(
              4,
              (index) => getAnswerItem(index),
            ),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ResultScreen(
                              currectAnswer: resultAnswer,
                            )),
                  );
                },
                child: Text(
                  'مشاهده نتایج کوییز',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[700], minimumSize: Size(200.0, 40.0)),
              )
          ],
        ),
      ),
    );
  }

  Widget getAnswerItem(int index) => ListTile(
        title: Text(
          selectedQuestion!.asnwerList![index],
          textAlign: TextAlign.end,
        ),
        onTap: () {
          if (selectedQuestion!.currectAnswer == index) {
            resultAnswer++;
          } else {
            print('Wrong');
          }
          if (shownQuestionIndex == getQuestionsList().length - 1) {
            isFinalAnswerSubmited = true;
          }
          setState(() {
            if (shownQuestionIndex < getQuestionsList().length - 1) {
              shownQuestionIndex++;
            }
          });
        },
      );
}
