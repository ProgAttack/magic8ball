import 'package:flutter/material.dart';
import 'dart:math';

void main () => runApp(
  const MaterialApp(
    home: BallPage()
  )
);

class BallPage extends StatelessWidget {
  const BallPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20),      
        backgroundColor: const Color.fromARGB(255, 1, 55, 99),
      ),
      body: 
       const Ball()
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  
  void randomImage(){
    setState(() {
          ballNumber = Random().nextInt(5)+1;
          print('I got clicked');
          print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(         
        child: TextButton(onPressed: () {
          randomImage();         
          },
        child: Image.asset('assets/ball$ballNumber.png')
          
    )
  );
             
       
  }
}