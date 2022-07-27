import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class LifestyleDetailsPage extends StatefulWidget {
  const LifestyleDetailsPage({Key? key}) : super(key: key);

  @override
  State<LifestyleDetailsPage> createState() => _LifestyleDetailsPageState();
}

enum Workout { active, onceInAWeek, never, onceInAMonth }

class _LifestyleDetailsPageState extends State<LifestyleDetailsPage> {
  late bool hasStress = false;
  late bool doesSmoking = false;
  late bool drinksAlcohol = false;
  Workout _workout = Workout.never;
  late String workout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
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
                    "Add Details",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Add some details about your lifestyle and you're good to go",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            // const OccupationTextFieldWidget(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "What is your occupation?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: "Enter"),
                    ),
                  ),
                ],
              ),
            ),
            // const HasStressWidgetField(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Do you often get troubled with stress?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: true,
                            groupValue: hasStress,
                            onChanged: (bool? value) {
                              setState(() {
                                hasStress = value!;
                              });
                            }),
                        const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 20),
                        Radio(
                            value: false,
                            groupValue: hasStress,
                            onChanged: (bool? value) {
                              setState(() {
                                hasStress = value!;
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Do you drink alcohol?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: true,
                            groupValue: drinksAlcohol,
                            onChanged: (bool? value) {
                              setState(() {
                                drinksAlcohol = value!;
                              });
                            }),
                        const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 20),
                        Radio(
                            value: false,
                            groupValue: drinksAlcohol,
                            onChanged: (bool? value) {
                              setState(() {
                                drinksAlcohol = value!;
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Do you often get troubled with stress?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                            value: true,
                            groupValue: doesSmoking,
                            onChanged: (bool? value) {
                              setState(() {
                                doesSmoking = value!;
                              });
                            }),
                        const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 20),
                        Radio(
                            value: false,
                            groupValue: doesSmoking,
                            onChanged: (bool? value) {
                              setState(() {
                                doesSmoking = value!;
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "How often do you workout?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          children: [
                            Radio(
                                value: Workout.active,
                                groupValue: _workout,
                                onChanged: (Workout? value) {
                                  setState(() {
                                    _workout = value!;
                                    workout = "active";
                                  });
                                }),
                            const Text(
                              "Active",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(children: [
                          Radio(
                              value: Workout.onceInAMonth,
                              groupValue: _workout,
                              onChanged: (Workout? value) {
                                setState(() {
                                  _workout = value!;
                                  workout = "onceInAMonth";
                                });
                              }),
                          const Text(
                            "Once in a month",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(children: [
                          Radio(
                              value: Workout.never,
                              groupValue: _workout,
                              onChanged: (Workout? value) {
                                setState(() {
                                  _workout = value!;
                                  workout = "never";
                                });
                              }),
                          const Text(
                            "Never",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      )
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20)),
              onPressed: () {
                //TODO: save user details and navigate to next page
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
