import 'package:contact_form/models/query.dart';
import 'package:flutter/material.dart';

class QueryType extends StatefulWidget {
  final Query? query;
  final void Function(Query? value) onQueryTypeChanged;
  const QueryType(
      {super.key, required this.query, required this.onQueryTypeChanged});
  @override
  State<QueryType> createState() => _QueryTypeState();
}

class _QueryTypeState extends State<QueryType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Query Type *",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(135, 145, 147, 1),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(136, 142, 140, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: const Text(
              "General Inquery",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(47, 51, 52, 1),
              ),
            ),
            leading: Radio(
              activeColor: const Color.fromRGBO(207, 210, 209, 1),
              value: Query.generalInquery,
              groupValue: widget.query,
              onChanged: widget.onQueryTypeChanged,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromRGBO(136, 142, 140, 1),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
              title: const Text(
                "Support Request",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(47, 51, 52, 1),
                ),
              ),
              leading: Radio(
                activeColor: const Color.fromRGBO(207, 210, 209, 1),
                value: Query.supportRequest,
                groupValue: widget.query,
                onChanged: widget.onQueryTypeChanged,
              )),
        ),
      ],
    );
  }
}
