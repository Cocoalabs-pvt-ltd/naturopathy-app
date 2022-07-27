import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class AppointmentDateTimePage extends StatelessWidget {
  const AppointmentDateTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              const SizedBox(width: 250),
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
          const SizedBox(height: 20),
          const Text(
            "Choose a Date",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(25),
                  fillColor: Colors.grey.shade700,
                  suffixIcon: Image.asset("assets/images/icons/calendar.png"),
                  hintText: "DD/MM/YYYY",
                  hintStyle: const TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Select a Time Slot",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                side: const BorderSide(
                  color: Colors.grey,
                )),
            onPressed: () {
              //TODO: Navigate to book appointment page
            },
            child: const Text(
              "09:00AM",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
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
              "Confirm",
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
