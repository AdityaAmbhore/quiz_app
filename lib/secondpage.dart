import 'package:flutter/material.dart';
import 'package:quiz_app/thirdpage.dart';



class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: 330,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              '    Learn Flutter the Fun Way!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Thirdpage()));
                },
                child: const Text(
                  'Star Quiz',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
