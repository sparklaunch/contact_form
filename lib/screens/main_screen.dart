import 'package:contact_form/components/email_address_text_field.dart';
import 'package:contact_form/components/first_name_text_field.dart';
import 'package:contact_form/components/last_name_text_field.dart';
import 'package:contact_form/components/message.dart';
import 'package:contact_form/components/query_type.dart';
import 'package:contact_form/models/query.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String firstName = "";
  String lastName = "";
  String emailAddress = "";
  String message = "";
  Query? queryType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(219, 239, 228, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(25, 40, 42, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FirstNameTextField(
                    onFirstNameChanged: onFirstNameChanged,
                  ),
                  const SizedBox(height: 20),
                  LastNameTextField(onLastNameChanged: onLastNameChanged),
                  const SizedBox(height: 20),
                  EmailAddressTextField(
                      onEmailAddressChanged: onEmailAddressChanged),
                  const SizedBox(height: 20),
                  QueryType(
                    query: queryType,
                    onQueryTypeChanged: onQueryTypeChanged,
                  ),
                  const SizedBox(height: 20),
                  Message(
                    onMessageChanged: onMessageChanged,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onEmailAddressChanged(String value) {
    setState(() {
      emailAddress = value;
    });
  }

  void onFirstNameChanged(String value) {
    setState(() {
      firstName = value;
    });
  }

  void onLastNameChanged(String value) {
    setState(() {
      lastName = value;
    });
  }

  void onMessageChanged(String value) {
    setState(() {
      message = value;
    });
  }

  void onQueryTypeChanged(Query? value) {
    setState(() {
      queryType = value;
    });
  }
}
