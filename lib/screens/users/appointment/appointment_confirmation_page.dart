import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/appointment/widgets/appointment_booked_doctor_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class AppointmentConfirmationPage extends StatelessWidget {
  const AppointmentConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      //TODO: Navigate back to home page
                    },
                    icon: Icon(Icons.arrow_back_ios, color: appGreen)),
                const Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(width: 180),
                IconButton(
                    onPressed: () {
                      //TODO: navigate to cart page
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: () {
                    //TODO: navigate to cart page
                  },
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const AppointmentBookedDoctorCard(),
            const SizedBox(height: 300),
            const Divider(
              thickness: 1,
              color: Color.fromRGBO(103, 101, 112, 1),
              indent: 20,
              endIndent: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sub-Total",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(103, 101, 112, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${rupee}400',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "GST (4%)",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(103, 101, 112, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${rupee}12',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total payable amount",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${rupee}400',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          //TODO: navigate to next page
        },
        child: Container(
          color: appGreen,
          height: 80,
          child: const Center(
            child: Text(
              "Continue",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "QuicksandBold",
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
