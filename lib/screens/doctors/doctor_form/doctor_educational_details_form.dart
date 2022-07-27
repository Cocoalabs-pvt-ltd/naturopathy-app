import 'package:flutter/material.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/graduated_college_field_widget.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/highest_qualification_field_widget.dart';
import 'package:naturopathy/screens/doctors/doctor_form/widgets/year_of_passing_field_widget.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class DoctorEducationalDetailsForm extends StatelessWidget {
  const DoctorEducationalDetailsForm({Key? key}) : super(key: key);

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
                  "Educational Details",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ],
          ),
          const HighestQualificationFieldWidget(),
          const GraduatedCollegeFieldWidget(),
          const YearOfPassingFieldWidget(),
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
