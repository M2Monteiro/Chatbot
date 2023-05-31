import 'package:chatbot/src/screen/chat/widget_custom/label_custom_widget.dart';
import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class InfoBodyWidget extends StatelessWidget {
  const InfoBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 19, bottom: 18),
          child: Image.asset(AppImagens.explain),
        ),
        const LabelCustomWidget(
          text: 'Explain Quantum physics',
        ),
        const LabelCustomWidget(
          text: 'What are wormholes explain like i am 5',
        ),
        Container(
          margin: const EdgeInsets.only(top: 37, bottom: 18),
          child: Image.asset(AppImagens.writeEdit),
        ),
        const LabelCustomWidget(
          text: 'Write a tweet about global warming',
        ),
        const LabelCustomWidget(
          text: 'Write a poem about flower and love',
        ),
        const LabelCustomWidget(
          text: 'Write a rap song lyrics about',
        ),
        Container(
          margin: const EdgeInsets.only(top: 37, bottom: 18),
          child: Image.asset(AppImagens.translate),
        ),
        const LabelCustomWidget(
          text: 'How do you say “how are you” in Korean?',
        ),
        const LabelCustomWidget(
          text: 'Write a poem about flower and love',
          margin: EdgeInsets.only(bottom: 30),
        ),
      ],
    );
  }
}
