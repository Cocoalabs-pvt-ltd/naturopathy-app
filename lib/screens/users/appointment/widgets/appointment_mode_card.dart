import 'package:flutter/material.dart';

class AppointmentCardMode extends StatelessWidget {
  final String imageUrl;
  final String modeName;

  const AppointmentCardMode(
      {Key? key, required this.imageUrl, required this.modeName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 200,
      width: MediaQuery.of(context).size.width / 2,
      child: Card(
        color: const Color.fromRGBO(54, 53, 69, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(
              modeName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
