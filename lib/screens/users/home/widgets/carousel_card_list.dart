import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:naturopathy/screens/users/home/widgets/carousel_card.dart';

class CarouselCardList extends StatefulWidget {
  const CarouselCardList({Key? key}) : super(key: key);

  @override
  State<CarouselCardList> createState() => _CarouselCardListState();
}

class _CarouselCardListState extends State<CarouselCardList> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> cardList = [
    const CarouselCard(
        image: "assets/images/template/doctor_illustration.png",
        caption: "Announcement",
        quote: "Our doctors will \n help you"),
    const CarouselCard(
        image: "assets/images/template/medical_prescription.png",
        caption: "Announcement",
        quote: "Book your \n check up now"),
    const CarouselCard(
        image: "assets/images/template/medicine.png",
        caption: "Announcement",
        quote: "Order medicines online")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: cardList,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cardList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
