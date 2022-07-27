import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String image;
  final String caption;
  final String quote;
  const CarouselCard(
      {Key? key,
      required this.image,
      required this.caption,
      required this.quote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 130,
        width: MediaQuery.of(context).size.width - 20,
        child: Card(
          color: const Color.fromRGBO(54, 53, 69, 1),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, height: 130),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        caption,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      quote,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
