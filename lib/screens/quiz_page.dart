import 'dart:math';
import 'package:brain_buzz/constants.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  int score = 0;

  void onQuit(BuildContext context){
    showDialog(context: context, builder: (alertContext){
      return AlertDialog(
        title: const Text('Quitter!😂'),
        content: const Text('Are you sure you want to exit the Quiz?'),
        elevation: 2,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.of(alertContext).pop();
                Navigator.of(context).pop();
              }, child: const Text('Yes'),
              ),
              const SizedBox(width: 10,),
              TextButton(onPressed: (){
                Navigator.of(alertContext).pop();
              }, child: const Text('No'),
              ),
            ],
          )

        ],
      );
    }
    );
  }

  void nextQuestion(String optionSelected) {
    if (optionSelected == questions[currentQuestionIndex].correctAnswer) {
      // print(questions[currentQuestionIndex].correctAnswer);
      score++;
    }
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        currentQuestionIndex = 0;
        Navigator.pushNamed(context, '/resultpage',
            arguments: [score, questions.length]);
      }
      questions[currentQuestionIndex].options.shuffle(Random());
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map quizLanguage = ModalRoute.of(context)?.settings.arguments as Map;
    String selectedLanguage = quizLanguage['lang'].toLowerCase();
    setState(() => questions = updateLanguage(selectedLanguage));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${quizLanguage['lang']} Questions'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
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
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Question ${currentQuestionIndex + 1}/${questions.length}'),
                          TextButton(
                            onPressed: () => onQuit(context),
                            child: const Text('Quit'),
                          ),
                        ],
                      ),
                      Text(questions[currentQuestionIndex].question),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            for (var option
                                in questions[currentQuestionIndex].options)
                              ElevatedButton(
                                onPressed: () {
                                  nextQuestion(option);
                                },
                                child: Text(option),
                              ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () => nextQuestion('next'),
                            child: const Text("Next"),
                          ),
                        ],
                      )
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

  List<Question> updateLanguage(String selectedLanguage) {
    if(selectedLanguage == 'css'){
      return cssquestions;
    } else {
      return htmlquestions;
    }
  }





}
