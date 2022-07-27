import 'package:flutter/material.dart';

class PaymentConfirmationPage extends StatelessWidget {
  const PaymentConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/template/payment_success.png",
            height: MediaQuery.of(context).size.height - 500,
          ),
        ),
        const Text(
          "Your booking has been \nsuccessfully completed",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150, vertical: 20)),
                onPressed: () {
                  //TODO: navigate to home page
                },
                child: const Text(
                  "Ok",
                  style: TextStyle(color: Colors.black),
                ))),
      ],
    ));
  }
}
