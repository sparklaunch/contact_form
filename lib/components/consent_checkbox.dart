import 'package:flutter/material.dart';

class ConsentCheckbox extends StatelessWidget {
  final void Function(bool? value) onConsentCheckboxChanged;
  final bool? isConsentCheckboxChecked;
  const ConsentCheckbox(
      {super.key,
      required this.isConsentCheckboxChecked,
      required this.onConsentCheckboxChanged});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "I consent to being contacted by the team *",
        style: TextStyle(
          color: Color.fromRGBO(14, 114, 94, 1),
        ),
      ),
      leading: Checkbox(
        activeColor: const Color.fromRGBO(14, 114, 94, 1),
        value: isConsentCheckboxChecked,
        onChanged: onConsentCheckboxChanged,
      ),
    );
  }
}
