import 'package:e_commerce/app/modules/home/controllers/home_controller.dart';
import 'package:e_commerce/app/modules/home/views/nikee.dart';
import 'package:e_commerce/app/modules/home/views/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final controller = Get.put(HomeController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 13, top: 10),
          height: 30,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.menu_open_outlined),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.shopping_bag_rounded),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 220),
                child: Text(
                  "Hemendra",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 248),
                child: Text(
                  "Welcome to Laza.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 10),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border:
                              Border.all(color: Color(0xfff8f8f8), width: 1)),
                      child: TextField(
                        controller: controller.search,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          filled: true,
                          fillColor: Color(0xfff8f8f8),
                          hintText: "Search...",
                          prefixIcon: Icon(Icons.search_rounded,
                              color: Color(0xffb1c0c0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 9),
                    height: 52,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff9775fa),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.keyboard_voice_outlined,
                        color: Colors.white, size: 28),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Choose Brand",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return Container(
                  height: 50,
                  child: ListView.builder(
                    itemCount: controller.Brands.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 9),
                        child: Container(
                          height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Color(0xfff5f6fa),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(Nike()),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 50,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            controller.Brands[index][0]),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                              SizedBox(width: 2),
                              Text(
                                controller.Brands[index][1],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "New Arrival",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.shop.length,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 290,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => Vieww(
                                  image: controller.shop[index]
                                      [0], // Pass image URL
                                  name: controller.shop[index]
                                      [1], // Pass product name
                                  price: controller.shop[index]
                                      [3], // Pass product price
                                ));
                          },
                          child: Container(
                            height: 265,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 170,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  controller.shop[index][0]),
                                              fit: BoxFit.fill)),
                                    ),
                                    Positioned(
                                      left: 120,
                                      child: Icon(Icons.heart_broken_rounded,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                Text(
                                  controller.shop[index][1],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  controller.shop[index][2],
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.currency_rupee,
                                      size: 14,
                                    )),
                                    TextSpan(
                                      text: controller.shop[index][3],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black),
                                    )
                                  ]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
