import 'package:chatbot/src/chatbot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "./lib/.env");
  runApp(const ChatBot());
}
