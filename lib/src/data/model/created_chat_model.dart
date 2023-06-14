
class CreatedChatModel {
  String? id;
  int? created;
  List<Choices>? choices;

  CreatedChatModel({
    this.id,
    this.created,
    this.choices,
  });

  CreatedChatModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    created = map['created'];
    if (map['choices'] != null) {
      choices = <Choices>[];
      map['choices'].forEach((v) {
        choices!.add(Choices.fromMap(v));
      });
    }
  }

  @override
  String toString() {
    return 'CreatedChatModel(id: $id, created: $created, choices: $choices)';
  }
}

class Choices {
  Message? message;

  Choices({this.message});

  Choices.fromMap(Map<String, dynamic> map) {
    message = map['message'] != null ? Message.fromMap(map['message']) : null;
  }

  @override
  String toString() {
    return 'Choices( message: $message)';
  }
}

class Message {
  String? role;
  String? content;

  Message({this.role, this.content});

  Message.fromMap(Map<String, dynamic> map) {
    role = map['role'] ?? '';
    content = map['content'] ?? '';
  }

  @override
  String toString() {
    return 'Message(role: $role, content: $content)';
  }
}
