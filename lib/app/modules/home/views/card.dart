import 'package:e_commerce/app/modules/home/controllers/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cardd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    final cardController = Get.put(CardController());

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
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                if (cardController.card.isEmpty) // Show message if empty
                  Center(child: Text("Your cart is empty."))
                else
                  ListView.builder(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // Disable scrolling
                    itemCount: cardController.card.length,
                    itemBuilder: (context, index) {
                      var cardItem = cardController.card[index];
                      return Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        height: 145,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(cardItem[0]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cardItem[1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    cardItem[2],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.currency_rupee,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Text(cardItem[3],
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 3),
                                      Text(cardItem[4],
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Center(
                                            child: Icon(
                                                Icons
                                                    .keyboard_arrow_down_outlined,
                                                size: 19,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Text(cardItem[5],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 22)),
                                        SizedBox(width: 15),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Center(
                                            child: Icon(
                                                Icons
                                                    .keyboard_arrow_up_outlined,
                                                size: 19,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(width: 120),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.delete_outline,
                                                size: 18, color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 23),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined, size: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 75,
                  width: 380,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 70,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.techdotmatrix.com/wp-content/uploads/2016/11/How-to-remove-location-from-Google-Maps-and-Google-Now.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text("43, Electronics City Phase 1,\nElactronic City",
                          style: TextStyle(color: Colors.grey, fontSize: 19)),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child:
                              Icon(Icons.done, size: 21, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 23),
                      ),
                      SizedBox(
                        width: 175,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 75,
                  width: 380,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 70,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.hindustantimes.com/ht-img/img/2023/07/28/550x309/Ludhiana-man-eying-spouse-visa-duped-as-wife-snaps_1688061928946_1690558808245.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Visa Classic",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          Text(
                            "**** 7690",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child:
                              Icon(Icons.done, size: 21, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    "Order Info",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Row(
                    children: [
                      Text("Subtotal",
                          style: TextStyle(color: Colors.grey, fontSize: 21)),
                      SizedBox(
                        width: 248,
                      ),
                      Icon(Icons.currency_rupee_sharp, size: 15),
                      Text(
                        "110",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Row(
                    children: [
                      Text("Delivery Charge",
                          style: TextStyle(color: Colors.grey, fontSize: 21)),
                      SizedBox(
                        width: 198,
                      ),
                      Icon(Icons.currency_rupee_sharp, size: 15),
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Row(
                    children: [
                      Text("Total",
                          style: TextStyle(color: Colors.grey, fontSize: 21)),
                      SizedBox(
                        width: 275,
                      ),
                      Icon(Icons.currency_rupee_sharp, size: 15),
                      Text(
                        "120",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
