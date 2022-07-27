import 'package:flutter/material.dart';

class TreatmentDetailsCard extends StatelessWidget {
  final DateTime appointmentDate;
  final DateTime appointmentTime;
  const TreatmentDetailsCard(
      {Key? key, required this.appointmentDate, required this.appointmentTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
            onTap: () {
              //TODO: Navigate to respective pages
            },
            child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 2,
                child: Card(
                    color: const Color.fromRGBO(54, 53, 69, 1),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              "assets/images/icons/treatment_history.png"),
                          Padding(
                            padding: const EdgeInsets.only(right: 150.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(width: 20),
                                Text(
                                  '${appointmentTime.day} ${appointmentTime.month} ${appointmentTime.year}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                                Text(
                                  '${appointmentTime.hour} : ${appointmentTime.minute}',
                                  style: const TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                //TODO: navigate to treatment history page
                              },
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey))
                        ],
                      ),
                    ))))));
  }
}
