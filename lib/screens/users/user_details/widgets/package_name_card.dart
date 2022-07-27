import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class PackageNameCard extends StatefulWidget {
  const PackageNameCard({Key? key}) : super(key: key);

  @override
  State<PackageNameCard> createState() => _PackageNameCardState();
}

class _PackageNameCardState extends State<PackageNameCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: MediaQuery.of(context).size.width - 5,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: appGreen!, width: 2)),
        color: appGreen!.withOpacity(0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/icons/packages.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Package Name",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${rupee}3000',
                      style: const TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            featuresList(context, Icons.check, Colors.green, "Feature One"),
            featuresList(context, Icons.check, Colors.green, "Feature Two"),
            featuresList(context, Icons.close, Colors.red, "Feature Three"),
            featuresList(context, Icons.close, Colors.red, "Feature Four"),
            Padding(
              padding: const EdgeInsets.only(left: 250.0),
              child: Chip(
                  side: BorderSide(
                    color: appGreen!,
                  ),
                  backgroundColor: Colors.green.shade800,
                  label: const Text(
                    "Change",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Widget featuresList(
    BuildContext context, IconData icon, Color iconColor, String texts) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        const SizedBox(width: 5),
        Text(
          texts,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
