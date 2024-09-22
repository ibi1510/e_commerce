import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vieww extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  Vieww({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<Vieww> createState() => _ViewwState();
}

class _ViewwState extends State<Vieww> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 410,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 330,
                    top: 30,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xfff8f8f8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.shopping_bag_rounded),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 30,
                    child: InkWell(
                      onTap: () {
                        Get.back(); // Use Get.back() for navigation back
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xfff8f8f8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20, top: 16),
              child: Row(
                children: [
                  Text(
                    "Men's Printed Pullover Hoodie",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                  ),
                  Spacer(),
                  Text(
                    "Price",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 9),
              child: Row(
                children: [
                  SizedBox(
                      width: 170,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                            overflow: TextOverflow.ellipsis),
                      )),
                  SizedBox(
                    width: 162,
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 12, left: 13, right: 12, bottom: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: 78,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1687842433_3385347.jpg?w=480&dpr=1.3"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: 78,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1687842433_9569854.jpg?w=480&dpr=1.3"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: 78,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1687842433_3639886.jpg?w=480&dpr=1.3"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: 78,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1687842433_2235960.jpg?w=480&dpr=1.3"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 3),
              child: Row(
                children: [
                  Text(
                    "Size",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  SizedBox(
                    width: 243,
                  ),
                  Text(
                    "Size Guide",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Row(
                children: [
                  Container(
                    height: 78,
                    width: 68,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("S",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23))),
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  Container(
                    height: 78,
                    width: 68,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("M",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23))),
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  Container(
                    height: 78,
                    width: 68,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("L",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23))),
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  Container(
                    height: 78,
                    width: 68,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("XL",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23))),
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  Container(
                    height: 78,
                    width: 68,
                    decoration: BoxDecoration(
                        color: Color(0xfff5f6fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("2XL",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270, top: 5),
              child: Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 23),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "The Nike Throwback Pullover Hoodle is made from premium French terry fabric that blends a performance feel with..",
                style: TextStyle(fontSize: 19.5, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
