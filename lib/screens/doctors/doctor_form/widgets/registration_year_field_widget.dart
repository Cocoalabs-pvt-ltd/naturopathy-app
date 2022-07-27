import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class RegistrationYearWidget extends StatefulWidget {
  const RegistrationYearWidget({Key? key}) : super(key: key);

  @override
  State<RegistrationYearWidget> createState() => _RegistrationYearWidgetState();
}

class _RegistrationYearWidgetState extends State<RegistrationYearWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Registration Year",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "DD/MM/YYYY",
                suffixIcon: IconButton(
                    onPressed: () {
                      //TODO: open calendar widget
                    },
                    icon: Image.asset(calendar)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
