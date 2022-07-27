import 'package:flutter/material.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 200,
            child: Image.asset("assets/images/template/kirkland_allergy.jpg",
                height: 200),
          ),
          const Text(
            "Product Name",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${rupee}400",
                style: TextStyle(
                  color: appGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 150),
              Icon(
                Icons.favorite,
                color: appGreen,
              )
            ],
          ),
        ],
      ),
    );
  }
}
