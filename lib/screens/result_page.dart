// import 'package:brain_buzz/main.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  // final String correctScore;
  // final String totalQuestion;

  const ResultPage({
    super.key,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  String mainCaption = '';
  String subCaption = '';

  @override
  Widget build(BuildContext context) {
    final List result = ModalRoute.of(context)?.settings.arguments as List;
    resultCaption(result[0], result[1]);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.lightBlueAccent, width: 5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Your Score', style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),),
                        Text(
                          '${result[0]}/${result[1]}',
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(mainCaption, style: const TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(subCaption,
                    style: const TextStyle(
                    fontSize: 15,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Colors.deepPurple,
                        ),
                          onPressed: () {},
                          child: const Text('Share',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                      ),
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {},
                      child: const Text('Submit',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                    ),
                  ),
                ),
                ]
              ),
            ),
          ],
        ),
      ),
    ));
  }

  resultCaption(int score, int totalQuestion) {
    setState(() {
      if(score <= totalQuestion * 0.4){
        mainCaption = 'Opps!';
        subCaption = 'Your performance is poor, you can do better!';
      } else if(score <= totalQuestion * 0.7){
        mainCaption = 'Good Result!';
        subCaption = 'This is good, Rumi! but you can do better!';
      } else{
        mainCaption = 'Congratulations';
        subCaption = 'Great job, Rumi! You did it!';
      }
    });

  }
}
