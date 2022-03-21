import 'package:real_estate_app/consts/ownerobj.dart';

class House {
  String imagepath;
  String title;
  String location;
  String price;
  Owner owner;
  int bedroom;
  int livingroom;
  int kitchen;
  int bathroom;
  String description;
  String tag;
  bool faved;
  List<String> imageList;

  House(
      {required this.imagepath,
      required this.title,
      required this.location,
      required this.price,
      required this.owner,
      required this.bedroom,
      required this.livingroom,
      required this.kitchen,
      required this.bathroom,
      required this.description,
      required this.tag,
      required this.faved,
      required this.imageList});

  static List<House> getHouseList() {
    return [
      House(
        imagepath: "lib/assets/images/group1_1.jpg",
        title: "Luxury Suburb in New Jersey",
        location: "Newark, New Jersey",
        price: r"$140,000.00",
        owner: ownerList[0],
        bedroom: 3,
        livingroom: 1,
        kitchen: 1,
        bathroom: 2,
        description: "",
        tag: 'tag1',
        faved: false,
        imageList: [
          "lib/assets/images/group1_1.jpg",
          "lib/assets/images/group1_2.jpg",
          "lib/assets/images/group1_3.jpg",
        ],
      ),
      House(
        imagepath: "lib/assets/images/group2_1.jpg",
        title: "Green Mansion in Florida ",
        location: "Jacksonville, Florida",
        price: r"$84,000.00",
        owner: ownerList[1],
        bedroom: 4,
        livingroom: 2,
        kitchen: 1,
        bathroom: 3,
        description: "",
        tag: 'tag2',
        faved: false,
        imageList: [
          "lib/assets/images/group2_1.jpg",
          "lib/assets/images/group2_2.jpg",
          "lib/assets/images/group2_3.jpg",
          "lib/assets/images/group2_4.jpg",
        ],
      ),
      House(
        imagepath: "lib/assets/images/group4_1_2.png",
        title: "Modern Lake House in Hawaii",
        location: "Honolulu, Hawaii",
        price: r"$56,000.00",
        owner: ownerList[1],
        bedroom: 2,
        livingroom: 1,
        kitchen: 1,
        bathroom: 1,
        description: "",
        tag: 'tag3',
        faved: false,
        imageList: [
          "lib/assets/images/group3_1.jpg",
          "lib/assets/images/group3_2.jpg",
          "lib/assets/images/group3_3.jpg",
          "lib/assets/images/group3_4.jpg",
        ],
      ),
      House(
        imagepath: "lib/assets/images/image1.png",
        title: "Suburb in Texas",
        location: "Santa Fe, Texas",
        price: r"$56,000.00",
        owner: ownerList[1],
        bedroom: 2,
        livingroom: 1,
        kitchen: 1,
        bathroom: 1,
        description: "",
        tag: 'tag4',
        faved: false,
        imageList: [
          "lib/assets/images/group2_1.jpg",
          "lib/assets/images/group2_2.jpg",
          "lib/assets/images/group2_3.jpg",
          "lib/assets/images/group2_4.jpg",
        ],
      ),
      House(
        imagepath: "lib/assets/images/image2.png",
        title: "Mansion in the Amazons ",
        location: "Amazon, Brazil ",
        price: r"$56,000.00",
        owner: ownerList[1],
        bedroom: 2,
        livingroom: 1,
        kitchen: 1,
        bathroom: 1,
        description: "",
        tag: 'tag5',
        faved: false,
        imageList: [
          "lib/assets/images/group2_1.jpg",
          "lib/assets/images/group2_2.jpg",
          "lib/assets/images/group2_3.jpg",
          "lib/assets/images/group2_4.jpg",
        ],
      ),
      House(
        imagepath: "lib/assets/images/image3.png",
        title: "Dublex in a NewYork Apartment",
        location: "NewYork, NewYork",
        price: r"$56,000.00",
        owner: ownerList[1],
        bedroom: 2,
        livingroom: 1,
        kitchen: 1,
        bathroom: 1,
        description: "",
        tag: 'tag6',
        faved: false,
        imageList: [
          "lib/assets/images/group2_1.jpg",
          "lib/assets/images/group2_2.jpg",
          "lib/assets/images/group2_3.jpg",
          "lib/assets/images/group2_4.jpg",
        ],
      ),
    ];
  }
}
