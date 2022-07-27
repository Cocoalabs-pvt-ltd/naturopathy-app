import 'package:flutter/material.dart';

class AppointmentBookedDoctorCard extends StatelessWidget {
  const AppointmentBookedDoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              "assets/images/template/doctor_image_1.jpg",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dr.Narayanan Nair",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "General Physician, MBBS",
                    style: TextStyle(
                      color: Color.fromRGBO(103, 101, 112, 1),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/icons/calendar.png"),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "20 Nov 2022",
                          style: TextStyle(
                              color: Color.fromRGBO(103, 101, 112, 1)),
                        ),
                      ),
                      const Text("|",
                          style: TextStyle(
                              color: Color.fromRGBO(103, 101, 112, 1))),
                      Row(children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(
                            Icons.access_time_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "10:00 am",
                            style: TextStyle(
                                color: Color.fromRGBO(103, 101, 112, 1)),
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              ))
        ]);
  }
}
