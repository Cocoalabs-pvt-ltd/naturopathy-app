import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        dashPattern: [5],
        color: Colors.red,
        strokeCap: StrokeCap.round,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.5),
          ),
          width: MediaQuery.of(context).size.width - 20,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  "Consultation starts at 10 am",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      //TODO: start consultation
                    },
                    child: const Text("Start")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
