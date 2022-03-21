class Owner {
  String imagepath;
  String name;
  String address;
  String profileDesc;
  String phoneNumber;

  Owner(
      {required this.imagepath,
      required this.name,
      required this.address,
      required this.profileDesc,
      required this.phoneNumber});
}

List ownerList = [
  Owner(
    imagepath: "lib/assets/images/owner1.png",
    name: "Andrew Thomson",
    address: "LA · California",
    profileDesc: "",
    phoneNumber: "+49 07723 29 84 90 ",
  ),
  Owner(
    imagepath: "lib/assets/images/owner2.png",
    name: "Miguel Ninurta",
    address: "Newark, NJ",
    profileDesc: "",
    phoneNumber: "49 07723 38 21 48 ",
  ),
];
