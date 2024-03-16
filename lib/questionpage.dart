import 'package:flutter/material.dart';
import 'package:quiz_app/ans_button.dart';
import 'package:quiz_app/questions/question_list.dart ';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var questionindex = 0;
  void switchQuestion() {
    setState(() {
      questionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cureentQuestion = questions[questionindex];
    return SizedBox(
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              cureentQuestion.text, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.white),
            )),
            SizedBox(
              height: 40,
            ),
            ...cureentQuestion.getShuffledAnswer().map((ans) {
              return AnsButton(
                onTap: switchQuestion,
                text: ans,
              );
            })
          ],
        ),
      ),
    );
  }
}
