import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/home/widgets/campaign_card.dart';
import 'package:naturopathy/screens/users/home/widgets/carousel_card.dart';
import 'package:naturopathy/screens/users/home/widgets/carousel_card_list.dart';
import 'package:naturopathy/screens/users/home/widgets/notification_card.dart';
import 'package:naturopathy/screens/users/home/widgets/products_and_packages_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CampaignCard> cards = [
    const CampaignCard(),
    const CampaignCard(),
    const CampaignCard()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    //TODO: open drawer
                  },
                  icon: const Icon(Icons.format_align_center_rounded,
                      color: Colors.white)),
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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search", suffixIcon: Icon(Icons.search)),
            ),
          ),
          const CarouselCardList(),
          const NotificationCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Campaigns",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: appGreen,
                      fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      //TODO: Navigate to campaigns list page
                    },
                    child: Text("See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appGreen,
                            fontSize: 20)))
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return cards[index];
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              ProductsAndPackagesCard(
                  icon: Icons.check_box_outline_blank, text: "Products"),
              ProductsAndPackagesCard(
                icon: Icons.layers_outlined,
                text: "Packages",
              )
            ],
          )
        ],
      ),
    ));
  }
}
