import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: const Text(
                'You AI Assistant',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            const SizedBox(
              width: 250,
              child: Text(
                'Using this software, you can ask you questions and receive articles using artificial intelligence assistant',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                AppImagens.robotMast,
              ),
            ),
            Container(
              width: 330,
              height: 56,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/chat',
                    (route) => false,
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 *   // Navigator.of(context).pushNamedAndRemoveUntil(
                  //   '/chat',
                  //   (route) => false,
                  // );
 */
