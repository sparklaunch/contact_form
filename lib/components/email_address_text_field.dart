import 'package:flutter/material.dart';

class EmailAddressTextField extends StatefulWidget {
  final void Function(String emailAddress) onEmailAddressChanged;
  const EmailAddressTextField({super.key, required this.onEmailAddressChanged});
  @override
  State<EmailAddressTextField> createState() => _EmailAddressTextFieldState();
}

class _EmailAddressTextFieldState extends State<EmailAddressTextField> {
  final emailAddressTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Email Address *",
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
            controller: emailAddressTextEditingController,
            keyboardType: TextInputType.emailAddress,
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
    emailAddressTextEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    emailAddressTextEditingController.addListener(() {
      widget.onEmailAddressChanged(emailAddressTextEditingController.text);
    });
    super.initState();
  }
}
