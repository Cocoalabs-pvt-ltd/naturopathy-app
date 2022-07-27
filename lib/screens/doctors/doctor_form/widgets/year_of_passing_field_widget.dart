import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class YearOfPassingFieldWidget extends StatefulWidget {
  const YearOfPassingFieldWidget({Key? key}) : super(key: key);

  @override
  State<YearOfPassingFieldWidget> createState() =>
      _YearOfPassingFieldWidgetState();
}

class _YearOfPassingFieldWidgetState extends State<YearOfPassingFieldWidget> {
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
              "Year of Passing",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "DD/MM/YYYY",
                    prefixIcon: IconButton(
                        onPressed: () {
                          //TODO: open calendar
                        },
                        icon: Image.asset(calendar))),
              ))
        ],
      ),
    );
  }
}
