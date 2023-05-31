import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('You AI Assistant'),
            const SizedBox(
              width: 250,
              child: Text(
                'Using this software, you can ask you questions and receive articles using artificial intelligence assistant',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Image.asset(
                AppImagens.robotMast,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/chat',
                  (route) => false,
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Continue'),
                  Icon(Icons.arrow_forward_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
