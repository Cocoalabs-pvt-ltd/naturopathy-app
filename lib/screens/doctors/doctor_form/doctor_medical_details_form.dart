import 'package:flutter/material.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/location_field_widget.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/registration_number_field_widget.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/registration_year_field_widget.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class DoctorMedicalDetailsForm extends StatelessWidget {
  const DoctorMedicalDetailsForm({Key? key}) : super(key: key);

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
                  "Medical Details",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ],
          ),
          const RegistrationNumberFieldWidget(),
          const RegistrationYearWidget(),
          LocationFieldWidget(),
          const SizedBox(height: 250),
          ElevatedButton(
            onPressed: () {
              //TODO: Navigate to the next page
            },
            child: const Text(
              "Next",
              style:
                  TextStyle(color: Colors.black, fontFamily: "QuickSandBold"),
            ),
            style: ElevatedButton.styleFrom(
                primary: appGreen!,
                padding:
                    const EdgeInsets.symmetric(horizontal: 170, vertical: 20)),
          ),
        ],
      ),
    );
  }
}
