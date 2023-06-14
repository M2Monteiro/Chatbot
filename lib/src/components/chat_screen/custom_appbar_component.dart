import 'package:chatbot/src/themes/images.dart';
import 'package:flutter/material.dart';

class CustomAppBarComponent extends StatelessWidget {
  const CustomAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            child: Image.asset(AppImagens.mascot),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ChatGPT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFf3ABF38),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: const Text(
                      'Online',
                      style: TextStyle(
                        color: Color(0xFf3ABF38),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      elevation: 2,
    );
  }
}
