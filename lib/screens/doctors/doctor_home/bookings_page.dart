import 'package:flutter/material.dart';
import 'package:naturopathy/screens/doctors/doctor_home/widgets/bookings_card.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        //TODO: open drawer
                      },
                      icon: const Icon(Icons.format_align_left,
                          color: Colors.white)),
                  IconButton(
                      onPressed: () {
                        //TODO: open notifications page
                      },
                      icon:
                          const Icon(Icons.notifications, color: Colors.white)),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          //TODO: search
                        },
                        icon: Icon(Icons.search)))),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Bookings",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: BookingsCard(),
          )
        ]));
  }
}
