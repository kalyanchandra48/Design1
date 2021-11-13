import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  @override
  List<String> images = [
    'assets/Amsterdam.jpg',
    'assets/city.png',
    'assets/Berlin.jpeg'
  ];
  List<String> places = ['Amsterdam', 'Berlin', 'Karkova'];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        itemCount: 3,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 160,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                places[index],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
