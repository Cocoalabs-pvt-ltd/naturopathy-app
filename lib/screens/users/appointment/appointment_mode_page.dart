import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/appointment/widgets/appointment_mode_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class AppointmentModePage extends StatelessWidget {
  const AppointmentModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          const Text(
            "Choose mode",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: const [
                  AppointmentCardMode(
                      imageUrl: "assets/images/template/arrow_icon.png",
                      modeName: "Direct Consultancy"),
                  AppointmentCardMode(
                      imageUrl: "assets/images/template/zoom_icon.png",
                      modeName: "Zoom meeting"),
                  AppointmentCardMode(
                      imageUrl: "assets/images/template/botim_icon.png",
                      modeName: "Botim"),
                  AppointmentCardMode(
                      imageUrl: "assets/images/template/google_meet_icon.png",
                      modeName: "Google Meet"),
                ],
              ),
            ),
          )
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
              "Submit",
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
