import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class MedicalDetailsPage extends StatefulWidget {
  const MedicalDetailsPage({Key? key}) : super(key: key);

  @override
  State<MedicalDetailsPage> createState() => _MedicalDetailsPageState();
}

class _MedicalDetailsPageState extends State<MedicalDetailsPage> {
  final TextEditingController _familyHealthController = TextEditingController();
  final TextEditingController _medicationController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _surgeryController = TextEditingController();
  late bool? haveAllergies;
  late bool takesMedication = false;
  late bool hadInjuries = false;
  late bool hadChronicIllnesses = false;
  late bool hadBeenHospitalized = false;
  late bool hadUndergoneSurgery = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
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
                  "Add Details",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ],
          ),
          const Text(
            "Add some details about your heath",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 20),
          // const AllergyCheckWidgetField(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Do you have any allergies?",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                        value: true,
                        groupValue: haveAllergies,
                        onChanged: (bool? value) {
                          setState(() {
                            haveAllergies = value!;
                          });
                        }),
                    const Text(
                      "Yes",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 20),
                    Radio(
                        value: false,
                        groupValue: haveAllergies,
                        onChanged: (bool? value) {
                          setState(() {
                            haveAllergies = value!;
                          });
                        }),
                    const Text(
                      "No",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const AllergyDropdownWidgetField(),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What kind of allergies do you have?",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    //TODO: implement dropdown list
                    TextFormField(
                      decoration: const InputDecoration(hintText: "Allergies"),
                      controller: _allergiesController,
                    ),
                  ])),
          // const MedicationCheckWidgetField(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Do you take any kind of medication?",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                        value: true,
                        groupValue: takesMedication,
                        onChanged: (bool? value) {
                          setState(() {
                            takesMedication = value!;
                          });
                        }),
                    const Text(
                      "Yes",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 20),
                    Radio(
                        value: false,
                        groupValue: takesMedication,
                        onChanged: (bool? value) {
                          setState(() {
                            takesMedication = value!;
                          });
                        }),
                    const Text(
                      "No",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Enter the name of your medication",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter the name of medication",
                    ),
                    controller: _medicationController,
                  ),
                )
              ],
            ),
          ),
          // const HadInjuriesRadioWidget(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Have you ever had any kind of injuries?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: true,
                          groupValue: hadInjuries,
                          onChanged: (bool? value) {
                            setState(() {
                              hadInjuries = value!;
                            });
                          }),
                      const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Radio(
                          value: false,
                          groupValue: hadInjuries,
                          onChanged: (bool? value) {
                            setState(() {
                              hadInjuries = value!;
                            });
                          }),
                      const Text(
                        "No",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ]),
          ),
          // const HadChronicInjuriesWidgetField(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Have you ever had any kind of chronic illness?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: true,
                          groupValue: hadChronicIllnesses,
                          onChanged: (bool? value) {
                            setState(() {
                              hadChronicIllnesses = value!;
                            });
                          }),
                      const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Radio(
                          value: false,
                          groupValue: hadChronicIllnesses,
                          onChanged: (bool? value) {
                            setState(() {
                              hadChronicIllnesses = value!;
                            });
                          }),
                      const Text(
                        "No",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ]),
          ),
          // const BeenHospitalizedWidgetField(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Have you been hospitalized in the past?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: true,
                          groupValue: hadBeenHospitalized,
                          onChanged: (bool? value) {
                            setState(() {
                              hadBeenHospitalized = value!;
                            });
                          }),
                      const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Radio(
                          value: false,
                          groupValue: hadBeenHospitalized,
                          onChanged: (bool? value) {
                            setState(() {
                              hadBeenHospitalized = value!;
                            });
                          }),
                      const Text(
                        "No",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ]),
          ),
          // const HadUndergoneSurgeryWidgetField(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Have you undergone any surgeries?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          value: true,
                          groupValue: hadUndergoneSurgery,
                          onChanged: (bool? value) {
                            setState(() {
                              hadUndergoneSurgery = value!;
                            });
                          }),
                      const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Radio(
                          value: false,
                          groupValue: hadUndergoneSurgery,
                          onChanged: (bool? value) {
                            setState(() {
                              hadUndergoneSurgery = value!;
                            });
                          }),
                      const Text(
                        "No",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "What type of surgery did you had?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: "Enter"),
                      controller: _surgeryController,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Does anyone in your family face any kind of health issues?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: "Enter"),
                      controller: _familyHealthController,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 20)),
            onPressed: () {
              //TODO: navigate to lifestyle details page
            },
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    ));
  }

  _validate() {
    Map<String, dynamic> body = {
      "haveAllergies": haveAllergies,
      "takeMedication": takesMedication,
      "hadInjuries": hadInjuries,
      "hadChronicIllnesses": hadChronicIllnesses,
      "beenHospitalized": hadBeenHospitalized,
      "hadSurgeries": hadUndergoneSurgery,
      "familyHealthIssue": _familyHealthController.text,
      "nameOfMedication": _medicationController.text,
      "kindOfAllergies": [_allergiesController.text],
      "nameOfSurgery": _surgeryController.text
    };
  }
}
