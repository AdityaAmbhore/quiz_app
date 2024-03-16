import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ScreenPage extends StatelessWidget {
  ScreenPage(  this.starQuiz, {super.key});
  final void Function() starQuiz;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Image.asset('assets/images/quiz-logo.png' , height: 300,),
        const SafeArea(child: SizedBox(
          height: 30,
        )),
        Text(
          '    Learn Flutter the Fun Way!',
          style: GoogleFonts.luxuriousRoman(
            color: Colors.white,
            fontSize: 20
          ),
        ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed:  starQuiz ,
              icon: const Icon(Icons.arrow_right_alt_outlined , color: Colors.white,),
            label: const Text('Start Quiz' , style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          )
      ],
    );
  } }
