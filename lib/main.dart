import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:naturopathy/screens/doctors/doctor_form/doctor_educational_details_form.dart';
import 'package:naturopathy/screens/doctors/doctor_form/doctor_medical_details_form.dart';
import 'package:naturopathy/screens/doctors/doctor_form/doctor_photo_form.dart';
import 'package:naturopathy/screens/doctors/doctor_home/bookings_page.dart';
import 'package:naturopathy/screens/doctors/doctor_home/doctor_profile_page.dart';
import 'package:naturopathy/screens/doctors/doctor_home/requests_page.dart';
import 'package:naturopathy/screens/doctors/doctor_home/treatment_history_page.dart';
import 'package:naturopathy/screens/products/products_details_page.dart';
import 'package:naturopathy/screens/products/products_overview_page.dart';
import 'package:naturopathy/screens/users/appointment/appointment_confirmation_page.dart';
import 'package:naturopathy/screens/users/appointment/appointment_date_time_page.dart';
import 'package:naturopathy/screens/users/appointment/appointment_mode_page.dart';
import 'package:naturopathy/screens/users/appointment/department_overview_page.dart';
import 'package:naturopathy/screens/users/appointment/doctor_overview_page.dart';
import 'package:naturopathy/screens/users/auth/authentication_page.dart';
import 'package:naturopathy/screens/users/home/home_page.dart';
import 'package:naturopathy/screens/users/payment/payment_confirmation_page.dart';
import 'package:naturopathy/screens/users/payment/payment_page.dart';
import 'package:naturopathy/screens/users/user_details/basic_details_page.dart';
import 'package:naturopathy/screens/users/user_details/lifestyle_details_page.dart';
import 'package:naturopathy/screens/users/user_details/medical_details_page.dart';
import 'package:naturopathy/screens/users/user_details/profile_page.dart';
import 'package:naturopathy/screens/users/user_details/treatment_details/treatment_details_overview_page.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(appGreen),
        ),
        fontFamily: "QuicksandRegular",
        textTheme: const TextTheme(bodySmall: TextStyle(color: Colors.white)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(appGreen),
              textStyle: MaterialStateProperty.all(const TextStyle(
                  fontFamily: "QuicksandBold", color: Colors.black)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)))),
        ),
        primaryColor: Colors.green,
        scaffoldBackgroundColor: backgroundColorBlack,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          iconColor: Colors.grey,
          filled: true,
          fillColor: Colors.black,
          hintStyle: TextStyle(
              color: Colors.grey.shade700, fontFamily: "QuicksandRegular"),
          labelStyle: const TextStyle(
              fontFamily: "QuicksandRegular", color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: appGreen!),
          ),
        ),
      ),
      routes: {'/': (BuildContext context) => const TreatmentHistoryPage()},
    );
  }
}
