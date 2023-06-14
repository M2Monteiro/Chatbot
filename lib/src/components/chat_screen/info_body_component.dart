import 'package:chatbot/src/components/chat_screen/info_text_component.dart';
import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class InfoBodyComponent extends StatelessWidget {
  const InfoBodyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 12.0,
          right: 12.0,
          bottom: 0.0,
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 19, bottom: 18),
              child: Image.asset(AppImagens.explain),
            ),
            const InfoTextComponent(
              text: 'Explain Quantum physics',
            ),
            const InfoTextComponent(
              text: 'What are wormholes explain like i am 5',
            ),
            Container(
              margin: const EdgeInsets.only(top: 37, bottom: 18),
              child: Image.asset(AppImagens.writeEdit),
            ),
            const InfoTextComponent(
              text: 'Write a tweet about global warming',
            ),
            const InfoTextComponent(
              text: 'Write a poem about flower and love',
            ),
            const InfoTextComponent(
              text: 'Write a rap song lyrics about',
            ),
            Container(
              margin: const EdgeInsets.only(top: 37, bottom: 18),
              child: Image.asset(AppImagens.translate),
            ),
            const InfoTextComponent(
              text: 'How do you say “how are you” in Korean?',
            ),
            const InfoTextComponent(
              text: 'Write a poem about flower and love',
              margin: EdgeInsets.only(bottom: 30),
            ),
          ],
        ),
      ),
    );
  }
}
