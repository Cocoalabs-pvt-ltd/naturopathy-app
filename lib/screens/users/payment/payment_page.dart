import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    bool _isExpanded = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    //TODO: Navigate back to home page
                  },
                  icon: Icon(Icons.arrow_back_ios, color: appGreen)),
              const Text(
                "Select your payment",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(width: 100),
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
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Select Payment Option",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          const SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ExpansionTileCard(
                  leading: const Icon(Icons.credit_card, color: Colors.white),
                  contentPadding: const EdgeInsets.all(8.0),
                  title: const Text(
                    "Credit/Debit Card",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  baseColor: const Color.fromRGBO(54, 53, 69, 1),
                  expandedColor: const Color.fromRGBO(54, 53, 69, 1),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Account No",
                            labelStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            hintText: "Enter the account no.",
                            hintStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            prefixStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(34, 60, 118, 1)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            hintText: "Enter the name",
                            hintStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            prefixStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(34, 60, 118, 1)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Expiration Date",
                            labelStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            hintText: "MM/YY",
                            hintStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            prefixStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(34, 60, 118, 1)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "CVV",
                            labelStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            hintText: "Enter the CVV",
                            hintStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                            prefixStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(34, 60, 118, 1)),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                  ])),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ExpansionTileCard(
              leading: Icon(Icons.monetization_on, color: Colors.white),
              contentPadding: EdgeInsets.all(8.0),
              title: Text(
                "PhonePe/Google Pay",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              baseColor: Color.fromRGBO(54, 53, 69, 1),
              expandedColor: Color.fromRGBO(54, 53, 69, 1),
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ExpansionTileCard(
              leading: const Icon(Icons.account_balance_outlined,
                  color: Colors.white),
              contentPadding: const EdgeInsets.all(8.0),
              title: const Text(
                "Net Banking",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              baseColor: const Color.fromRGBO(54, 53, 69, 1),
              expandedColor: const Color.fromRGBO(54, 53, 69, 1),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Account No",
                        labelStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        hintText: "Enter the account no.",
                        hintStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        prefixStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(34, 60, 118, 1)),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        hintText: "Enter the name",
                        hintStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        prefixStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(34, 60, 118, 1)),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Expiration Date",
                        labelStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        hintText: "MM/YY",
                        hintStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        prefixStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(34, 60, 118, 1)),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "CVV",
                        labelStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        hintText: "Enter the CVV",
                        hintStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        prefixStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(34, 60, 118, 1)),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          //TODO: navigate to next page
        },
        child: Container(
          color: appGreen,
          height: 80,
          child: Center(
            child: Text(
              "Pay ${rupee}400 now",
              style: const TextStyle(
                  fontSize: 18,
                  fontFamily: "QuicksandBold",
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
