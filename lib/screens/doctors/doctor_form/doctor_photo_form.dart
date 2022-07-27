import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class DoctorPhotoForm extends StatefulWidget {
  DoctorPhotoForm({Key? key}) : super(key: key);

  @override
  State<DoctorPhotoForm> createState() => _DoctorPhotoFormState();
}

class _DoctorPhotoFormState extends State<DoctorPhotoForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: IconButton(
                    onPressed: () {
                      //TODO: navigate to previous page
                    },
                    icon: Icon(Icons.arrow_back_ios, color: appGreen!)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  "Add Photo",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Add your photo",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Image.asset("assets/images/template/photo_card.png"),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Navigate to the next page
                  },
                  child: const Text(
                    "Upload",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "QuickSandBold"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: appGreen!,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 20)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
