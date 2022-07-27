import 'package:flutter/material.dart';

class LocationFieldWidget extends StatefulWidget {
  LocationFieldWidget({Key? key}) : super(key: key);

  @override
  State<LocationFieldWidget> createState() => _LocationFieldWidgetState();
}

class _LocationFieldWidgetState extends State<LocationFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Location",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.location_pin, color: Colors.grey),
                  hintText: "Enter"),
            ),
          )
        ],
      ),
    );
  }
}
