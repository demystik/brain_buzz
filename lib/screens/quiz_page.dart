import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HTML Questions'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:  Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                      color: Colors.grey,
                        offset: Offset(1, 0),
                        blurRadius: 1.0,
                        spreadRadius: 3.0,
                    ),
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Question 0/30'),
                          Text('Quit'),
                        ],
                      ),
                      const Text('Who is making the web standard?'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          elevationButton('Option 1'),
                          elevationButton('Option 2'),
                          elevationButton('Option 3'),
                          elevationButton('Option 4'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  elevationButton(String option) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(

      ),
      onPressed: (){},
      child: Text(option),
    );
  }
}
