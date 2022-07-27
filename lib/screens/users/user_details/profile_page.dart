import 'package:flutter/material.dart';
import 'package:naturopathy/bloc/user_bloc.dart';
import 'package:naturopathy/models/user.dart';
import 'package:naturopathy/screens/users/user_details/widgets/package_name_card.dart';
import 'package:naturopathy/utils/ui_helper_constants.dart';

class ProfilePage extends StatelessWidget {
  final User? user;
  const ProfilePage({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = UserBloc();
    return Scaffold(
        body: SingleChildScrollView(
      child: StreamBuilder(
        stream: _bloc.getUserProfile(user!.id!),
        builder: (context, AsyncSnapshot<User> snapshot) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                      AssetImage("assets/images/template/man_image.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    snapshot.data!.name!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Text(
                  snapshot.data!.email!,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 10),
                        side: BorderSide(color: appGreen!),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      //TODO: navigate to complete profile page
                    },
                    icon: Icon(
                      Icons.article,
                      color: appGreen,
                    ),
                    label: Text(
                      "Complete your profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: appGreen),
                    ),
                  ),
                ),
                const PackageNameCard(),
                profileSectionCard(context,
                    "assets/images/icons/orders_icon.png", "My Orders"),
                profileSectionCard(context,
                    "assets/images/icons/bookings_icon.png", "My Bookings")
              ]);
        },
      ),
    ));
  }
}

Widget profileSectionCard(BuildContext context, String imageUrl, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        //TODO: Navigate to respective pages
      },
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 2,
        child: Card(
          color: const Color.fromRGBO(54, 53, 69, 1),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imageUrl),
                  const SizedBox(width: 20),
                  Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
