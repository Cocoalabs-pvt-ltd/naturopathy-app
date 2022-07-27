import 'package:flutter/material.dart';
import 'package:naturopathy/utils/curve_clipper.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class ProductsAndPackagesCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const ProductsAndPackagesCard(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(53, 59, 64, 1),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 180,
                    color: appGreen,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(70),
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                ),
              ],
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
