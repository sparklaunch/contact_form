import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  final void Function(String message) onMessageChanged;
  const Message({super.key, required this.onMessageChanged});
  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final messageTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Message *",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(62, 69, 68, 1),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(136, 146, 142, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: messageTextEditingController,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            maxLines: 8,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    messageTextEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    messageTextEditingController.addListener(() {
      widget.onMessageChanged(messageTextEditingController.text);
    });
    super.initState();
  }
}
