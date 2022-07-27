import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class ProfileFormCard extends StatefulWidget {
  const ProfileFormCard({Key? key}) : super(key: key);

  @override
  State<ProfileFormCard> createState() => _ProfileFormCardState();
}

class _ProfileFormCardState extends State<ProfileFormCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Registration Number",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Enter"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Registration Year",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "DD/MM/YYYY",
                    suffixIcon: IconButton(
                        onPressed: () {
                          //TODO: open calendar
                        },
                        icon: Image.asset(calendar))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Location",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Location",
                    suffixIcon: IconButton(
                        onPressed: () {
                          //TODO: open calendar
                        },
                        icon: const Icon(Icons.location_on_outlined))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Highest Qualification",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Graduated College",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Year of passing",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
