import 'package:chatbot/src/screen/global_widget/info_text_global_widget.dart';
import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class InfoBodyWidget extends StatelessWidget {
  const InfoBodyWidget({super.key});

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
            const InfoTextGlobalWidget(
              text: 'Explain Quantum physics',
            ),
            const InfoTextGlobalWidget(
              text: 'What are wormholes explain like i am 5',
            ),
            Container(
              margin: const EdgeInsets.only(top: 37, bottom: 18),
              child: Image.asset(AppImagens.writeEdit),
            ),
            const InfoTextGlobalWidget(
              text: 'Write a tweet about global warming',
            ),
            const InfoTextGlobalWidget(
              text: 'Write a poem about flower and love',
            ),
            const InfoTextGlobalWidget(
              text: 'Write a rap song lyrics about',
            ),
            Container(
              margin: const EdgeInsets.only(top: 37, bottom: 18),
              child: Image.asset(AppImagens.translate),
            ),
            const InfoTextGlobalWidget(
              text: 'How do you say “how are you” in Korean?',
            ),
            const InfoTextGlobalWidget(
              text: 'Write a poem about flower and love',
              margin: EdgeInsets.only(bottom: 30),
            ),
          ],
        ),
      ),
    );
  }
}
