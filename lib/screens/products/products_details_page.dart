import 'package:flutter/material.dart';
import 'package:naturopathy/screens/products/widgets/product_image_carousel.dart';
import 'package:naturopathy/screens/products/widgets/products_list_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class ProductsDetailsPage extends StatelessWidget {
  const ProductsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                const Text(
                  "Products",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(width: 180),
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
            const ProductImageCarousel(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                "Kirkland Allergy Medicine",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
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
                  Text(
                    "${rupee}200",
                    style: TextStyle(
                        color: appGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec finibus, massa non ultrices dapibus, leo metus iaculis diam, a elementum leo odio nec nisi.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ProductsListCard(),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 150, vertical: 20)),
                    onPressed: () {
                      //TODO: navigate to home page
                    },
                    child: const Text(
                      "Add to bag",
                      style: TextStyle(color: Colors.black),
                    ))),
          ],
        ),
      ),
    );
  }
}
