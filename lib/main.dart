import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmojiGenerator(),
    );
  }
}

class EmojiGenerator extends StatefulWidget {
  @override
  _EmojiGeneratorState createState() => _EmojiGeneratorState();
}

class _EmojiGeneratorState extends State<EmojiGenerator> {
  // List of emojis to choose from
  final List<String> emojis = [
    '😀', '😂', '😍', '🥳', '😎', '🤖', '🙈', '🌈', '🍕', '🎉',
    '🌍', '💖', '🚀', '🐶', '🐱', '🍀', '🎈', '🎵', '🦄', '🍔'
  ];

  // Variable to hold the current emoji
  String currentEmoji = '😀';

  // Function to generate a new emoji
  void generateEmoji() {
    final random = Random();
    setState(() {
      currentEmoji = emojis[random.nextInt(emojis.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emoji Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the current emoji
            Text(
              currentEmoji,
              style: TextStyle(fontSize: 100),
            ),
            SizedBox(height: 20),
            // Button to generate a new emoji
            ElevatedButton(
              onPressed: generateEmoji,
              child: Text('Generate Emoji'),
            ),
          ],
        ),
      ),
    );
  }
}