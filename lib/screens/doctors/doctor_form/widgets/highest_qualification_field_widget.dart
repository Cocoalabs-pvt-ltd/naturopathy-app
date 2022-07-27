import 'package:flutter/material.dart';

class HighestQualificationFieldWidget extends StatefulWidget {
  const HighestQualificationFieldWidget({Key? key}) : super(key: key);

  @override
  State<HighestQualificationFieldWidget> createState() =>
      _HighestQualificationFieldWidgetState();
}

class _HighestQualificationFieldWidgetState
    extends State<HighestQualificationFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Highest Qualification",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Enter"),
              ))
        ],
      ),
    );
  }
}
