import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarousellWidget extends StatefulWidget {
  const CarousellWidget({super.key, required this.myImages});
  final List<String> myImages;
  @override
  State<CarousellWidget> createState() => _CarousellWidgetState();
}

class _CarousellWidgetState extends State<CarousellWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              //autoPlay: true,
              viewportFraction: 1,
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColorLight),
              child: Image.asset(
                item,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
