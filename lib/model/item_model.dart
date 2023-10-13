class ItemModel {
  final String itemName;
  final double itemPrice;
  final String itemDescription;
  final double ratingItem;
  final String imageUrl;
  final int totalReviews;

  const ItemModel(
      {required this.itemName,
      required this.itemPrice,
      required this.imageUrl,
      required this.itemDescription,
      required this.ratingItem,
      required this.totalReviews});
}
