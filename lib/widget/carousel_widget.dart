import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarousellWidget extends StatefulWidget {
  const CarousellWidget({super.key, required this.myImages});
  final List<String> myImages;
  @override
  State<CarousellWidget> createState() => _CarousellWidgetState();
}

class _CarousellWidgetState extends State<CarousellWidget> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: CarouselSlider(
          options: CarouselOptions(
              //autoPlay: true,
              height: MediaQuery.of(context).size.height / 3,
              // autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(seconds: 2),
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
          items: widget.myImages.map((item) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColorLight),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
