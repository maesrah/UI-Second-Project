import 'package:flutter/material.dart';

class RateReviewWidget extends StatelessWidget {
  const RateReviewWidget(
      {super.key,
      required this.ratingItem,
      required this.totalReviews,
      required this.tenants});

  final String ratingItem;
  final String totalReviews;
  final String tenants;
  //final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              tenants,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(Icons.star_border_outlined)),
                  TextSpan(
                    text: ratingItem,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ]),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$totalReviews reviews',
            style: Theme.of(context)
                .textTheme
                .titleMedium, // Replace with your desired text
          ),
        ),
        // Replace with your desired icon
      ],
    );
  }
}
