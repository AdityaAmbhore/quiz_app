import 'package:flutter/material.dart';
import 'package:quiz_app/questionpage.dart';
import 'package:quiz_app/screenpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Widget? activeScreen ;
      @override
  void initState() {
     activeScreen = ScreenPage(switchScreen) ;
    super.initState();
  }

  void switchScreen(){
        setState(() {
          activeScreen = const QuestionPage();
        });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // Colors.purple,
                 Colors.deepPurpleAccent,
                Colors.pink
              ]
          )
        ),
        child:  activeScreen,
      ),
    );
  }
}
