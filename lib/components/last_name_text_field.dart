import 'package:flutter/material.dart';

class LastNameTextField extends StatefulWidget {
  final void Function(String lastName) onLastNameChanged;
  const LastNameTextField({super.key, required this.onLastNameChanged});
  @override
  State<LastNameTextField> createState() => _LastNameTextFieldState();
}

class _LastNameTextFieldState extends State<LastNameTextField> {
  final lastNameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Last Name *",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(138, 146, 143, 1),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(138, 146, 143, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: lastNameTextEditingController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    lastNameTextEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    lastNameTextEditingController.addListener(() {
      widget.onLastNameChanged(lastNameTextEditingController.text);
    });
    super.initState();
  }
}
