import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:naturopathy/bloc/user_bloc.dart';
import 'package:naturopathy/models/user.dart';
import 'package:naturopathy/screens/users/user_details/medical_details_page.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class BasicDetailsPage extends StatefulWidget {
  const BasicDetailsPage({Key? key}) : super(key: key);

  @override
  State<BasicDetailsPage> createState() => _BasicDetailsPageState();
}

enum Gender { male, female, others }

class _BasicDetailsPageState extends State<BasicDetailsPage> {
  final TextEditingController _heightEditingController =
      TextEditingController();
  final TextEditingController _weightEditingController =
      TextEditingController();
  final TextEditingController _locationEditingController =
      TextEditingController();
  Gender _gender = Gender.male;
  late String gender;

  final _bloc = UserBloc();

  Dio? dio = Dio();

  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: IconButton(
                    onPressed: () {
                      //TODO: Navigate back to signup page
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: appGreen,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Basic Details",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Gender",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // const GenderRadioGroupWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                      value: Gender.male,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value!;
                          gender = "male";
                        });
                      }),
                  const Text(
                    "Male",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 50),
                  Radio(
                      value: Gender.female,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value!;
                          gender = "female";
                        });
                      }),
                  const Text(
                    "Female",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 50),
                  Radio(
                      value: Gender.others,
                      groupValue: _gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _gender = value!;
                          gender = "others";
                        });
                      }),
                  const Text(
                    "Others",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Date of Birth",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Image.asset(calendar),
                      onPressed: () {
                        //TODO: open calendar widget
                      },
                    ),
                    hintText: "DD/MM/YYYY"),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Height(Inch)",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: _heightEditingController,
                decoration:
                    const InputDecoration(hintText: "Enter your height"),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Weight(Kg)",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: _weightEditingController,
                decoration:
                    const InputDecoration(hintText: "Enter your weight"),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: _locationEditingController,
                decoration:
                    const InputDecoration(hintText: "Enter your location"),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150, vertical: 20)),
                onPressed: () {
                  _validate();
                  Get.to(const MedicalDetailsPage());
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }

  _validate() {
    Map<String, dynamic> body = {
      "height": _heightEditingController.text,
      "weight": _weightEditingController.text,
      "location": _locationEditingController.text
    };

    FormData formdata = FormData.fromMap(body);

    _bloc.storeUserDetails(user!.id!, formdata);
  }
}
