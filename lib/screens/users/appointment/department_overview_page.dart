import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/appointment/widgets/department_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class DepartmentOverviewPage extends StatelessWidget {
  const DepartmentOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Choose from various specialities",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: DepartmentCard(),
        )
      ],
    ));
  }
}
