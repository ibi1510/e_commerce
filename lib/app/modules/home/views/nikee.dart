import 'package:e_commerce/app/modules/home/controllers/nikee_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nike extends StatelessWidget {
  Nike({Key? key}) : super(key: key);

  // Instantiate the controller
  final NikeController nikeController = Get.put(NikeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.arrow_back),
        ),
        title: Container(
          height: 52,
          width: 58,
          decoration: BoxDecoration(
              color: Color(0xfff5f6fa),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/a8/48/87/a848873d2660998d2d2c37eaf24b3215.jpg",
                  ),
                  fit: BoxFit.fill)),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.shopping_bag_outlined),
          ),
          SizedBox(
            width: 3,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "365 Items",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Available in Stock",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 165,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff8f8f8),
                    ),
                    child: Center(
                      child: RichText(
                          text: TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.short_text,
                                size: 18,
                              ),
                            ),
                            TextSpan(
                                text: "Sort",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black))
                          ])),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Use Obx to reactively display the shop list
            Obx(() => GridView.builder(
              shrinkWrap: true,
              itemCount: nikeController.shop.length,
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 290,
              ),
              itemBuilder: (context, index) {
                var item = nikeController.shop[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 265,
                      width: 170,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(item[0]),
                                        fit: BoxFit.fill)),
                              ),
                              Positioned(
                                left: 120,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.heart_broken_rounded,
                                      color: Colors.grey,
                                    )),
                              )
                            ],
                          ),
                          Text(item[1],
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          Text(
                            item[2],
                            style: const TextStyle(
                                fontWeight: FontWeight.w600),
                          ),
                          RichText(
                              text: TextSpan(children: [
                                const WidgetSpan(
                                    child: Icon(
                                      Icons.currency_rupee,
                                      size: 14,
                                    )),
                                TextSpan(
                                    text: item[3],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black))
                              ]))
                        ],
                      ),
                    ),
                  ],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
