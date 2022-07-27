import 'package:flutter/material.dart';

class RegistrationNumberFieldWidget extends StatefulWidget {
  const RegistrationNumberFieldWidget({Key? key}) : super(key: key);

  @override
  State<RegistrationNumberFieldWidget> createState() =>
      _RegistrationNumberFieldWidgetState();
}

class _RegistrationNumberFieldWidgetState
    extends State<RegistrationNumberFieldWidget> {
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
              "Registration Number",
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
