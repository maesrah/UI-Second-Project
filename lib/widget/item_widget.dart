import 'package:flutter/material.dart';
import 'package:uisecondproject/model/apartment_model.dart';
// import 'package:uisecondproject/model/item_model.dart';
import 'package:uisecondproject/screen/details_page.dart';
import 'package:uisecondproject/theme.dart';

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

    return SizedBox(
      height: 170,
      child: Row(
        children: [
          Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.itemModel.mainImageUrl),
              ),
            ),
          ),
          const SizedBox(width: kSectionSpacingSm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(widget.itemModel.tenants),
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.grey),
                      ),
                      backgroundColor: Colors.transparent,
                      visualDensity: VisualDensity.compact,
                    ),
                    IconButton.filled(
                      color: isFavorite
                          ? Theme.of(context).primaryColor
                          : Colors.black,
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
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                      ),
                    )
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
                    widget.itemModel.name +
                        ' add one more line lakd lakd laksd asd ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.location_city_outlined,
                        size: 20,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    TextSpan(
                      text: widget.itemModel.location,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ]),
                  maxLines: 1,
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(
                              Icons.star_border_outlined,
                              size: 20,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          TextSpan(
                            text: widget.itemModel.ratingItem.toString(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '| ${widget.itemModel.totalReviews} reviews',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'RM${widget.itemModel.rentPrice}',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ' per month',
                      style: Theme.of(context).textTheme.bodySmall,
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
