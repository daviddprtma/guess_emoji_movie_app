import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        title: 'Guess Emoji Movie App',
        // make an exit button
        builder: (context, child) {
          return Stack(
            children: [
              child!,
              Positioned(
                top: 40,
                right: 10,
                
                child: IconButton(
                  icon: const Icon(Icons.logout, color: Colors.yellow,),
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else if (Platform.isIOS) {
                      exit(0);
                    }
                  },
                ),
              ),
            ],
          );
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ChatScreen(title: 'Guess Emoji Movie App'));
  }
}
