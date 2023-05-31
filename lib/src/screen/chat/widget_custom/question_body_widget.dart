import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class QuestionBodyWidget extends StatefulWidget {
  const QuestionBodyWidget({super.key});

  @override
  State<QuestionBodyWidget> createState() => _QuestionBodyWidgetState();
}

class _QuestionBodyWidgetState extends State<QuestionBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Text(
              'Hello chatGPT, how are you today?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 30,
                      offset: const Offset(1, 3), // changes position of shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  width: 10,
                  AppImagens.mascotMini,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Text(
                  'Hello chatGPT, how are you today?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
