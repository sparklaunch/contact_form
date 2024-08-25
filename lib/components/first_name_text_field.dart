import 'package:flutter/material.dart';

class FirstNameTextField extends StatefulWidget {
  final void Function(String firstName) onFirstNameChanged;
  const FirstNameTextField({super.key, required this.onFirstNameChanged});
  @override
  State<FirstNameTextField> createState() => _FirstNameTextFieldState();
}

class _FirstNameTextFieldState extends State<FirstNameTextField> {
  final firstNameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "First Name *",
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
            controller: firstNameTextEditingController,
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
    firstNameTextEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    firstNameTextEditingController.addListener(() {
      widget.onFirstNameChanged(firstNameTextEditingController.text);
    });
    super.initState();
  }
}
