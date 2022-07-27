import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Image.asset(
                      "assets/images/template/doctor_image_1.jpg",
                      height: 100,
                      width: 100),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Alex Thekkel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "General",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Image.asset(
                              calendar,
                              color: Colors.grey,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              "20 Nov 2022 |",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 4),
                            child: Text(
                              "10:00 am",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        side: const BorderSide(color: Colors.red, width: 2),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: () {
                        //TODO: function to approve the appointment
                      },
                      child: const Text(
                        "Reject",
                        style: TextStyle(fontSize: 18),
                      )),
                  const SizedBox(width: 20),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: appGreen,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        side: BorderSide(color: appGreen!, width: 2),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: () {
                        //TODO: function to approve the appointment
                      },
                      child: const Text(
                        "Approve",
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
          )
        ],
      ),
    );
  }
}
