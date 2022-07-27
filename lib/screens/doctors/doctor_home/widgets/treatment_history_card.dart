import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class TreatmentHistoryCard extends StatelessWidget {
  const TreatmentHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("assets/images/template/doctor_image_2.jpg",
          height: 200, width: 50),
      title: const Text(
        "Alex thekkel",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      subtitle: const Text(
        "alexthekkel@gmail.com",
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
      trailing: IconButton(
          onPressed: () {
            //TODO: navigate to the treatment details page
          },
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.white)),
    );
  }
}
