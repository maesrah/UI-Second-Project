import 'package:flutter/material.dart';
import 'package:uisecondproject/model/apartment_model.dart';
// import 'package:uisecondproject/model/item_model.dart';
import 'package:uisecondproject/screen/details_page.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({
    super.key,
    required this.itemModel,
  });

  final ApartmentModel itemModel;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   title: Text(
    //     itemModel.itemName,
    //     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    //   ),
    //   subtitle: Text(
    //     itemModel.itemDescription,
    //     style: const TextStyle(fontWeight: FontWeight.w600),
    //   ),
    //   trailing: Text(
    //     '${itemModel.ratingItem}',
    //     style:
    //         const TextStyle(color: Colors.amber, fontWeight: FontWeight.w600),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 170,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.itemModel.mainImageUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.itemModel.tenants),
                      ),
                    ),
                    IconButton.filled(
                        color: isFavorite
                            ? Colors.black
                            : Theme.of(context).primaryColor,
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(isFavorite
                                    ? 'Added to favorites'
                                    : 'Removed from favorites'),
                              ),
                            );
                          });
                        },
                        icon: const Icon(
                          Icons.favorite,
                        ))
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          itemModel: widget.itemModel,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    widget.itemModel.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                RichText(
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
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        const WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(Icons.star_border_outlined)),
                        TextSpan(
                          text: widget.itemModel.ratingItem.toString(),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ]),
                    ),

                    const SizedBox(
                      width: 5,
                    ),
                    // Replace with your desired icon
                    Text(
                      '| ${widget.itemModel.totalReviews} reviews',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium, // Replace with your desired text
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'RM${widget.itemModel.rentPrice}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: ' per month',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ]),
                ),
                // Text('RM${widget.itemModel.rentPrice}',
                //     style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
          )
        ],
      ),
    );
  }
}
