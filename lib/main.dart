import 'package:flutter/material.dart';
import 'package:guess_emoji_movie_app/chat_screen.dart';

void main() {
  runApp(const GenerativeAISample());
}

class GenerativeAISample extends StatelessWidget {
  const GenerativeAISample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter + Generative AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(title: 'Guess Emoji Movie App'),
    );
  }
}
