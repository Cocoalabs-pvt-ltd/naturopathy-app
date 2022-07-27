import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/appointment/widgets/review_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

//TODO: update during API integration
class DoctorOverviewPage extends StatelessWidget {
  const DoctorOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      //TODO: Navigate back to home page
                    },
                    icon: Icon(Icons.arrow_back_ios, color: appGreen)),
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
            const SizedBox(height: 20),
            //TODO: implement the speciality chip
            const Text(
              "We found the doctor for you!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(height: 25),
            CarouselSlider(
                items: [
                  Image.asset("assets/images/template/doctor_image_1.jpg"),
                  Image.asset("assets/images/template/doctor_image_2.jpg"),
                  Image.asset("assets/images/template/doctor_image_3.jpg")
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10),
              child: Text(
                "Dr.Narayanan Nair",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const Text(
              "General Physician, MBBS",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "21 years of experience",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 160.0),
              child: Chip(
                backgroundColor: const Color.fromRGBO(234, 184, 10, 1),
                label: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        '4.5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.star_border),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            side: const BorderSide(
                              color: Colors.grey,
                            )),
                        onPressed: () {
                          //TODO: Navigate to book appointment page
                        },
                        child:
                            Image.asset("assets/images/icons/calendar_1.png")),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Book An \nAppointment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          side: const BorderSide(
                            color: Colors.grey,
                          )),
                      onPressed: () {
                        //TODO: Navigate to review bottom modal
                      },
                      child: Icon(
                        Icons.star_border,
                        size: 30,
                        color: appGreen,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Write A \nReview",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(
              color: Colors.grey,
              endIndent: 20,
              indent: 20,
            ),
            const ReviewCard()
          ],
        ),
      ),
    );
  }
}
