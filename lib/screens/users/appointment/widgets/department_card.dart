import 'package:flutter/material.dart';

class DepartmentCard extends StatelessWidget {
  const DepartmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: navigate to respective pages
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width / 2,
        child: Card(
          elevation: 6,
          color: const Color.fromRGBO(25, 24, 41, 1),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/template/department.png",
                height: 200,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/images/icons/first_aid_box.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100.0, left: 10),
                child: Text(
                  "Department 1",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
