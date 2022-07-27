import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/user_details/treatment_details/widgets/treatment_details_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class TreatmentDetailsOverviewPage extends StatelessWidget {
  const TreatmentDetailsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    //TODO: open drawer
                  },
                  icon: const Icon(Icons.format_align_center_rounded,
                      color: Colors.white)),
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
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Treatment History",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: appGreen!),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    //TODO: Generate report
                  },
                  child: Text(
                    "Generate report",
                    style: TextStyle(
                      color: appGreen,
                    ),
                  ),
                )
              ],
            ),
          ),
          TreatmentDetailsCard(
              appointmentDate: DateTime.now(), appointmentTime: DateTime.now())
        ])));
  }
}
