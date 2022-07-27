import 'package:flutter/material.dart';

class GraduatedCollegeFieldWidget extends StatefulWidget {
  const GraduatedCollegeFieldWidget({Key? key}) : super(key: key);

  @override
  State<GraduatedCollegeFieldWidget> createState() =>
      _GraduatedCollegeFieldWidgetState();
}

class _GraduatedCollegeFieldWidgetState
    extends State<GraduatedCollegeFieldWidget> {
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
              "Graduated College",
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
