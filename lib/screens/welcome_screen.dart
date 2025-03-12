// import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('BrainBuzz', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),),
          ),
          body: Column(

            children: [
              Expanded(
                  flex: 3,
                  child: Lottie.asset('assets/lottie/lottie1.json'),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/homepage');
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white,),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
    );
  }
}
