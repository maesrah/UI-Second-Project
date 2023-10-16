import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uisecondproject/model/apartment_model.dart';
import 'package:uisecondproject/theme.dart';
import 'package:uisecondproject/widget/choice_widget.dart';
// import 'package:uisecondproject/model/item_model.dart';
import 'package:uisecondproject/widget/item_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> choicesList = [
    'All',
    'Popular',
    'Preferred',
    '5 stars',
    'Nearest'
  ];

  // final List<ItemModel> itemList = [
  //   const ItemModel(
  //     itemName: 'Caffe Misto',
  //     itemPrice: 4.99,
  //     itemDescription:
  //         'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
  //     ratingItem: 4.5,
  //     imageUrl:
  //         'https://globalassets.starbucks.com/digitalassets/products/bev/SBX20190617_CaffeMisto.jpg?impolicy=1by1_wide_topcrop_630',
  //     totalReviews: 321,
  //   ),
  //   const ItemModel(
  //     itemName: 'Caffe Latte',
  //     itemPrice: 3.99,
  //     itemDescription:
  //         'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
  //     ratingItem: 4.7,
  //     imageUrl:
  //         'https://www.nespresso.com/ncp/res/uploads/recipes/Global_OL_ALL_Coffee%20Moment_Recipe_Chocolate%20cookie_2017_2019.jpg',
  //     totalReviews: 21,
  //   ),
  //   const ItemModel(
  //     itemName: 'Strawberry Cream Waffle',
  //     itemPrice: 7.99,
  //     itemDescription:
  //         'Rich in taste of strawberry, with the creamy vanilla whippe cream',
  //     ratingItem: 4.8,
  //     imageUrl:
  //         'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2013%2F07%2F26%2Fstrawberry-cream-cheese-waffle-sandwiches-ck-x.jpg&q=60',
  //     totalReviews: 45,
  //   ),
  //   const ItemModel(
  //     itemName: 'Croissant Caramel Blueberry',
  //     itemPrice: 5.90,
  //     itemDescription:
  //         'Topped with blueberry, with a taste of sweetness from caramel',
  //     ratingItem: 4.8,
  //     imageUrl:
  //         'https://i0.wp.com/mangoshomekitchen.com/wp-content/uploads/2021/01/IMG_0149.jpg?fit=960%2C1200&ssl=1',
  //     totalReviews: 121,
  //   ),
  //   const ItemModel(
  //     itemName: 'Chocolate Lemon Cupcake',
  //     itemPrice: 2.95,
  //     itemDescription:
  //         'The sour and sweetness of the lemon neutralizes the sweetness of cream',
  //     ratingItem: 3.7,
  //     imageUrl:
  //         'https://www.duncanhines.ca/media/CACHE/images/recipes/394/lemon-chocolate-cupcakes/985d7b0b630967b9b143c1f5b25da520.jpg',
  //     totalReviews: 29,
  //   ),
  //   const ItemModel(
  //     itemName: 'Strawberry Grapefruit Shake',
  //     itemPrice: 200.95,
  //     itemDescription: 'It is time to eat strawberries,red,sweet and sour ',
  //     ratingItem: 3.0,
  //     imageUrl:
  //         'https://www.eatingbirdfood.com/wp-content/uploads/2023/02/grapefruit-smoothie-hero-new.jpg',
  //     totalReviews: 45,
  //   ),
  // ];

  void updateList(String value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            // Navigator.of(context).pop();
          },
        ),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              hintText: "Search",
              prefixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16.0,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.chat_bubble),
            //color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.heart),
            //color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: kSectionSpacingSm),
          ChoiceWidget(choicesList: choicesList),
          const SizedBox(height: kSectionSpacingSm),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kScreenPadding),
            child: Text(
              'Found 724 hosts',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const SizedBox(height: kSectionSpacingSm),
          for (final item in apartmentList)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: kScreenPadding),
              margin: const EdgeInsets.only(bottom: kSectionSpacingMd),
              child: ItemWidget(itemModel: item),
            ),
        ],
      ),
    );
  }
}
