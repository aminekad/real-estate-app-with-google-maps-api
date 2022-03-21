import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/appbar.dart';
import 'package:real_estate_app/consts/houseobj.dart';
import 'package:real_estate_app/consts/ownerobj.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80), child: CustomAppBar()),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 2,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32, bottom: 16),
              child: Container(
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image(image: AssetImage(ownerList[0].imagepath)),
                    ),
                    SizedBox(
                      height: 64,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ownerList[0].name.toString(),
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            ownerList[0].address.toString(),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 32, right: 32, bottom: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                  style: TextStyle(fontWeight: FontWeight.w200),
                )),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Contact",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 2,
                                    offset: Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                  image: AssetImage(
                                      "lib/assets/images/phoneicon2.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Text(
                              ownerList[0].phoneNumber.toString(),
                              style: TextStyle(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 2,
                                    offset: Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                  image: AssetImage(
                                      "lib/assets/images/directicon2.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Text(
                              "Direct Message",
                              style: TextStyle(),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "House Postings",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 98,
                        width: 98,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2,
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  House.getHouseList().elementAt(0).imagepath)),
                        ),
                      ),
                      Container(
                        height: 98,
                        width: 98,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2,
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  House.getHouseList().elementAt(2).imagepath)),
                        ),
                      ),
                      Container(
                        height: 98,
                        width: 98,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 2,
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  House.getHouseList().elementAt(3).imagepath)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "see other postings",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xffFF9F9F).withOpacity(0.81),
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image(
                                  image: AssetImage(ownerList[1].imagepath)),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            SizedBox(
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                        text:
                                            ownerList[1].name.toString() + ",",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text: "  " +
                                                ownerList[1].address.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14),
                                          ),
                                        ]),
                                  ),
                                  Text(
                                    "June 21, 2021",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "It was a great experience working with Andrew. He is a very positive person and I certainly enjoyed his company...",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
