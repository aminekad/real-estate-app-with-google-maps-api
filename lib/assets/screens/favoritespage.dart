// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_app/assets/screens/appbar.dart';
import 'package:real_estate_app/assets/screens/detailpage.dart';
import 'package:real_estate_app/assets/screens/favorites_change_notifier.dart';
import 'package:real_estate_app/consts/houseobj.dart';
import 'package:real_estate_app/consts/ownerobj.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({
    Key? key,
  }) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80), child: CustomAppBar()),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Text(
              "Favourites",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            thickness: 2,
            color: Color(0xffC4C4C4),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
              child: Consumer<FavoritesChangeNotifier>(
                //Provider - Consumer uses favoritelist
                builder: (context, value, child) => ListView.builder(
                  itemCount: value.favouriteList.length,
                  itemBuilder: (context, index) => Slidable(
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(
                            label: '',
                            icon: Icons.delete,
                            foregroundColor: Color(0xffFB6161),
                            onPressed: (context) {
                              context
                                  .read<FavoritesChangeNotifier>()
                                  .deleteItem(value.favouriteList[index]);
                              setState(() {
                                value.favouriteList[index].faved =
                                    false; // DOESN'T WORK
                              });
                            },
                          ),
                        ],
                      ),
                      child: favouriteCard(value.favouriteList[index])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget favouriteCard(House house) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 32.0,
      ),
      child: InkWell(
        onDoubleTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(selectedHouse: house),
              ));
        },
        child: Container(
          height: 98,
          width: MediaQuery.of(context).size.width - 64,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ]),
          child: Row(
            children: [
              SizedBox(
                height: 98,
                width: 98,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image(
                      fit: BoxFit.cover, image: AssetImage(house.imagepath)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      house.location,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text(
                              house.bedroom.toString(),
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Image(
                                height: 16,
                                image: AssetImage(
                                    "lib/assets/images/bedroomicon2.png"))
                          ]),
                          Text(house.price),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
