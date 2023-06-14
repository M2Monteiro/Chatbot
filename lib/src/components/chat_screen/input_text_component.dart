import 'package:chatbot/src/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class InputTextComponent extends StatelessWidget {
  final TextEditingController inputController;
  final void Function(String)? onSubmitted;
  final void Function()? voiceButton;
  final void Function()? sendButton;

  const InputTextComponent({
    super.key,
    required this.inputController,
    this.onSubmitted,
    this.voiceButton,
    this.sendButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: CustomTextFieldWidget(
                hintText: 'Write your message',
                textFieldController: inputController,
                onSubmitted: onSubmitted,
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
    );
  }
}
