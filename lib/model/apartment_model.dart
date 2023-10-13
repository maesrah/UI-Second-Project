class ApartmentModel {
  final String name;
  final String location;
  final String tenants;
  final double rentPrice;
  final String description;
  final double ratingItem;
  final String mainImageUrl;
  final List<String> images;
  final int totalReviews;
  final String host;
  final String hostImage;

  const ApartmentModel(
      {required this.name,
      required this.rentPrice,
      required this.mainImageUrl,
      required this.description,
      required this.ratingItem,
      required this.totalReviews,
      required this.location,
      required this.tenants,
      required this.images,
      required this.host,
      required this.hostImage});
}

final List<ApartmentModel> apartmentList = [
  const ApartmentModel(
    name: "Luxury Apartment 1",
    location: "Downtown",
    tenants: "Female",
    rentPrice: 2500.0,
    description: "A spacious and luxurious apartment in the heart of the city.",
    ratingItem: 4.7,
    totalReviews: 35,
    mainImageUrl:
        "https://i.pinimg.com/originals/24/e8/f0/24e8f08ba83e34213572acbdb1061bf0.jpg",
    images: [
      "assets/apartment/luxury1.jpg",
      "assets/apartment/luxury2.jpg",
      "assets/apartment/luxurymain.jpg"
    ],
    host: "John Doe",
    hostImage: "assets/iconMan.png",
  ),
  const ApartmentModel(
    name: "Cozy Studio Apartment",
    location: "Suburb",
    tenants: "Male",
    rentPrice: 1200.0,
    description:
        "A cozy studio apartment with a beautiful view of the suburbs.",
    ratingItem: 4.2,
    totalReviews: 20,
    mainImageUrl:
        "https://cf.bstatic.com/xdata/images/hotel/max1024x768/383834719.jpg?k=a8ed632aeaf2eb621e6753e941d4fb2f858005614b603cdef5bfe644ce1a1906&o=&hp=1",
    images: [
      "assets/apartment/cozy1.jpg",
      "assets/apartment/cozy2.jpg",
      "assets/apartment/cozymain.jpg"
    ],
    host: "Jane Smith",
    hostImage: "assets/iconWoman.png",
  ),
  const ApartmentModel(
    name: "Modern Loft",
    location: "City Center",
    tenants: "Mixed",
    rentPrice: 3000.0,
    description:
        "A modern loft with all the amenities you need for a comfortable stay.",
    ratingItem: 4.9,
    totalReviews: 42,
    mainImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxnv5R2xbufyCszdW58OurW7zKGiLTL-a_og&usqp=CAU",
    images: [
      "assets/apartment/loft1.jpg",
      "assets/apartment/loft2.jpg",
      "assets/apartment/loftmain.jpg"
    ],
    host: "Mike Johnson",
    hostImage: "assets/iconMan.png",
  ),
  const ApartmentModel(
    name: "Scenic Mountain Retreat",
    location: "Mountain Village",
    tenants: "Male",
    rentPrice: 1800.0,
    description:
        "Escape to the mountains with this scenic retreat for nature lovers.",
    ratingItem: 4.5,
    totalReviews: 28,
    mainImageUrl:
        "https://i.pinimg.com/originals/08/0c/f4/080cf4501f18535aace5f4c275b845be.jpg",
    images: [
      "assets/apartment/village1.jpg",
      "assets/apartment/village2.jpg",
      "assets/apartment/villagemain.jpg"
    ],
    host: "Emily White",
    hostImage: "assets/iconWoman.png",
  ),
  const ApartmentModel(
    name: "Seaside Paradise",
    location: "Beachfront",
    tenants: "Mixed",
    rentPrice: 3200.0,
    description: "Enjoy the beach and ocean views in this seaside paradise.",
    ratingItem: 4.8,
    totalReviews: 39,
    mainImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKK6ypypBWCI0Dt1sP-tM8SFl13Ka6LNT8Wg&usqp=CAU",
    images: [
      "assets/apartment/sea1.jpg"
          "assets/apartment/sea2.jpg"
          "assets/apartment/seamain.jpg"
    ],
    host: "Daniel Brown",
    hostImage: "assets/iconMan.png",
  ),
  const ApartmentModel(
    name: "Historic Townhouse",
    location: "Old Town",
    tenants: "Female",
    rentPrice: 2200.0,
    description: "Experience history in this charming historic townhouse.",
    ratingItem: 4.6,
    totalReviews: 32,
    mainImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyPNeYOMPGe9-gGbvmKK3n9IsjBeXAARxyug&usqp=CAU",
    images: [
      "assets/apartment/oldtown1.jpg",
      "assets/apartment/oldtown2.jpg",
      "assets/apartment/oldtownmain.jpg"
    ],
    host: "Olivia Green",
    hostImage: "assets/iconWoman.png",
  ),
  const ApartmentModel(
    name: "Rustic Cabin",
    location: "Countryside",
    tenants: "Mixed",
    rentPrice: 1500.0,
    description: "Get away from the city and unwind in this rustic cabin.",
    ratingItem: 4.4,
    totalReviews: 24,
    mainImageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe7yfI6vgaILk7mg-HTryH9JeFP0sciiEYhQ&usqp=CAU",
    images: [
      "assets/apartment/rusticCabin1.jpg",
      "assets/apartment/rusticCabin2.jpg",
      "assets/apartment/rusticmain.jpg"
    ],
    host: "William Turner",
    hostImage: "assets/iconMan.png",
  ),
  // You can add more ApartmentModel objects if needed
];

// You can add more ApartmentModel objects to the list if you want more than 7.
