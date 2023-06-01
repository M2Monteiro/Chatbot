// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? sendButton, voiceButton;
  final void Function(String)? onSubmitted;

  const InputTextWidget({
    Key? key,
    required this.controller,
    required this.sendButton,
    required this.voiceButton,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.92,
        height: 56,
        margin: const EdgeInsets.only(bottom: 22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  onSubmitted: onSubmitted,
                  decoration: const InputDecoration(
                    hintText: 'Write your message',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: voiceButton,
                    icon: Icon(
                      Icons.mic,
                      color: Colors.grey[600],
                    ),
                  ),
                  IconButton(
                    onPressed: sendButton,
                    icon: const Icon(
                      Icons.send_rounded,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
