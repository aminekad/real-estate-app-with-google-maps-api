import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/consts/houseobj.dart';

class ImageShow extends StatefulWidget {
  House selectedHouse;
  ImageShow({Key? key, required this.selectedHouse}) : super(key: key);

  @override
  _ImageShowState createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  int imageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Colors.white,
        leadingWidth: 85,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ImageIcon(
              AssetImage("lib/assets/images/close.png"),
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 18),
            child: Text(
              imageIndex.toString() +
                  " / " +
                  widget.selectedHouse.imageList.length.toString(),
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: CarouselSlider.builder(
          itemCount: widget.selectedHouse.imageList.length,
          itemBuilder: (context, index, realIndex) {
            final image = widget.selectedHouse.imageList[index];

            return buildImage(image, index);
          },
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: 300,
              initialPage: 0,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  imageIndex = index + 1;
                });
              }),
        ),
      ),
    );
  }

  Widget buildImage(String imagepath, int index) => Container(
        child: Image(image: AssetImage(imagepath)),
      );
}
