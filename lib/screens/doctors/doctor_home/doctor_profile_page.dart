import 'package:flutter/material.dart';
import 'package:naturopathy/screens/doctors/doctor_home/widgets/profile_form_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      //TODO: open drawer
                    },
                    icon: const Icon(Icons.format_align_left,
                        color: Colors.white)),
                IconButton(
                    onPressed: () {
                      //TODO: open notifications page
                    },
                    icon: const Icon(Icons.notifications, color: Colors.white)),
              ],
            ),
          ),
          const CircleAvatar(
            radius: 70,
            backgroundImage:
                AssetImage("assets/images/template/doctor_image_2.jpg"),
            foregroundColor: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Dr.Narayanan Nair",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          const Text(
            "narayanannair@gmail.com",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  primary: appGreen,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  side: BorderSide(color: appGreen!, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {
                //TODO: add campaign
              },
              icon: Icon(Icons.add, color: appGreen),
              label: Text(
                "Add Campaign",
                style: TextStyle(color: appGreen),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ProfileFormCard(),
          )
        ],
      ),
    ));
  }
}
