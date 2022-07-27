import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class CampaignCard extends StatelessWidget {
  const CampaignCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width / 1.5,
          child: Card(
            color: const Color.fromRGBO(53, 54, 69, 1),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        "assets/images/template/elderly_care.jpeg")),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Text(
                        "How to take care \nof the elderly",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ),
                    const SizedBox(width: 50),
                    IconButton(
                        onPressed: () {
                          //TODO: navigate to campaign details page
                        },
                        icon: Icon(Icons.arrow_forward_ios, color: appGreen))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 130.0),
                  child: Text(
                    "Dr.Vijana Sundhar",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
