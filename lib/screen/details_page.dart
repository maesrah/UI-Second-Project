import 'package:flutter/material.dart';

import 'package:uisecondproject/component/top_button.dart';
import 'package:uisecondproject/model/apartment_model.dart';
import 'package:uisecondproject/theme.dart';
// import 'package:uisecondproject/model/item_model.dart';
import 'package:uisecondproject/widget/amenities_widget.dart';
import 'package:uisecondproject/widget/bottom_book_widget.dart';
import 'package:uisecondproject/widget/carousel_widget.dart';
import 'package:uisecondproject/widget/host_widget.dart';
import 'package:uisecondproject/widget/rate_widget.dart';
import 'package:dotted_line/dotted_line.dart';

class DetailsPage extends StatefulWidget {
  final ApartmentModel itemModel;
  const DetailsPage({super.key, required this.itemModel});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarousellWidget(
                    myImages: widget.itemModel.images,
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: kScreenPadding,
                          vertical: kSectionSpacingSm,
                        ),
                        child: TopButton(),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kSectionSpacingSm,
                  left: kScreenPadding,
                  right: kScreenPadding,
                ),
                child: Text(
                  widget.itemModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kSectionSpacingSm,
                  left: kScreenPadding,
                  right: kScreenPadding,
                ),
                child: RichText(
                  text: TextSpan(children: [
                    const WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.star_border_outlined,
                      ), // Replace with your desired icon
                    ),
                    TextSpan(
                      text: widget.itemModel.description,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kSectionSpacingSm,
                  left: kScreenPadding,
                  right: kScreenPadding,
                ),
                child: RichText(
                  text: TextSpan(children: [
                    const WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(Icons.location_city_rounded)),
                    TextSpan(
                      text: widget.itemModel.location,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: kSectionSpacingSm,
                  left: kScreenPadding,
                  right: kScreenPadding,
                ),
                child: RateReviewWidget(
                  tenants: widget.itemModel.tenants,
                  ratingItem: widget.itemModel.ratingItem.toString(),
                  totalReviews: widget.itemModel.totalReviews.toString(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: kSectionSpacingSm,
                  left: kScreenPadding,
                  right: kScreenPadding,
                ),
                child: DottedLine(
                  dashGapLength: 4.0,
                ),
              ),
              HostWidget(
                host: widget.itemModel.host,
                imageHost: widget.itemModel.hostImage,
              ),
              const Divider(
                //height: 20,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Color(0xffFDFFAE),
              ),
              Container(
                  //height: MediaQuery.of(context).size.height,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Amenities and facilities',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kScreenPadding),
                    child: LayoutBuilder(builder: (context, boxConstraints) {
                      const double spacing = 8.0;
                      const int numberOfRows = 4;
                      final boxWidth = boxConstraints.maxWidth;

                      final availableWidthAfterDeductSpace =
                          boxWidth - (spacing * (numberOfRows - 1));

                      final widgetSize = availableWidthAfterDeductSpace / 4;

                      return Wrap(
                        spacing: spacing,
                        runSpacing: spacing,
                        children: [
                          SizedBox(
                            width: widgetSize,
                            child: const AmenitiesWidget(
                              icon: Icons.wifi,
                              caption: '100 Mbps Wifi',
                            ),
                          ),
                          SizedBox(
                            width: widgetSize,
                            child: const AmenitiesWidget(
                              icon: Icons.wifi,
                              caption: '100 Mbps Wifi',
                            ),
                          ),
                          SizedBox(
                            width: widgetSize,
                            child: const AmenitiesWidget(
                              icon: Icons.wifi,
                              caption: '100 Mbps Wifi',
                            ),
                          ),
                          SizedBox(
                            width: widgetSize,
                            child: const AmenitiesWidget(
                              icon: Icons.wifi,
                              caption: '100 Mbps Wifi',
                            ),
                          ),
                          SizedBox(
                            width: widgetSize,
                            child: const AmenitiesWidget(
                              icon: Icons.wifi,
                              caption: '100 Mbps Wifi',
                            ),
                          ),
                          // AmenitiesWidget(
                          //   icon: Icons.bathtub_sharp,
                          //   caption: 'Inside bathroom',
                          // ),
                          // AmenitiesWidget(
                          //     icon: Icons.ac_unit, caption: 'Air-conditioned'),
                          // AmenitiesWidget(
                          //   icon: Icons.tv,
                          //   caption: 'Free Netflix',
                          // ),
                          // AmenitiesWidget(
                          //   icon: Icons.weekend,
                          //   caption: 'Fully furnished',
                          // ),
                          // AmenitiesWidget(
                          //     icon: Icons.pets, caption: 'Pets Friendly')
                        ],
                      );
                    }),
                  )
                ],
              ))
            ],
          ),
        ),
        bottomNavigationBar: BottomBookBar(
          rentPrice: widget.itemModel.rentPrice,
        ));
  }
}
