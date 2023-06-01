class MessageModel {
  String message;
  String messageType;

  MessageModel({
    required this.message,
    required this.messageType,
  });

  @override
  String toString() {
    return 'ChatMessageModel(message: $message, messageType: $messageType)';
  }
}
