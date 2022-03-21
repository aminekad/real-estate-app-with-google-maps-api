// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/appbar.dart';
import 'package:real_estate_app/screens/detailpage.dart';
import 'package:real_estate_app/consts/houseobj.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<House> houses = House.getHouseList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70), child: CustomAppBar()),
      body: ListView.builder(
        itemCount: houses.length,
        itemBuilder: (context, index) => HouseCard(houses[index], index),
      ),
    );
  }

/* ListView.builder(
            itemCount: houses.length,
            itemBuilder: (context, index) => HouseCard(houses[index], index),
          ),*/
  Widget HouseCard(House house, int index) => Hero(
        tag: houses[index].tag,
        child: Material(
          child: Container(
            height: 300,
            width: 350,
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 220,
                  child: Card(
                    color: Colors.transparent,
                    elevation: 0.0,
                    child: InkWell(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(selectedHouse: houses[index]),
                          ))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                            image: AssetImage(
                              house.imagepath,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 8.0, top: 10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 24,
                        child: Text(
                          house.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 350,
                        height: 24,
                        child: Text(
                          "This house is for sale!",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

/*
Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 32, right: 32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDA4453),
                    Color(0xff89216B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffFB6161),
              ),
              child: Center(
                child: Text(
                  "Explore Now!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
 */