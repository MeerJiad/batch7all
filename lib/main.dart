//batch-7/exam week-2,live test.
import 'package:flutter/material.dart';
//main function
void main() {
  runApp(TextStylingApp());
}

class TextStylingApp extends StatelessWidget {
  const TextStylingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //title
            Text(
              'Flutter Text Styling',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          SizedBox(height: 16,),
            //sub-title
            Text(
              'Experiment with text styles',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
      //Text-button
            TextButton(onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You clicked the button!'),
                  duration: Duration(seconds: 2),
                ),);}, child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
