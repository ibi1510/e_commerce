import 'package:e_commerce/app/modules/home/controllers/payment_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  final PaymentController controller =
      Get.put(PaymentController()); // Initialize controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 60,
        width: 400,
        color: Colors.deepPurpleAccent,
        child: Center(
            child: Text("Done",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 5, right: 5),
              height: 220,
              width: 400,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.card.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(controller.card[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
                onPageChanged: (n) {
                  print(n); // Handle page change logic
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 30, bottom: 20),
              child: Container(
                width: 343,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurpleAccent),
                    color: Color(0xfff6f2ff),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_box_outlined,
                            color: Color(0xff9c7cfa), size: 20),
                        SizedBox(width: 5),
                        Text(
                          "Add new card",
                          style:
                              TextStyle(fontSize: 22, color: Color(0xff9c7cfa)),
                        ),
                      ],
                    )),
              ),
            ),
            buildTextField("Card Owner", controller.name, "Hemendra Mali"),
            buildTextField(
                "Card Number", controller.num, "4000 1234 5678 9010"),
            Row(
              children: [
                Expanded(
                  child: buildTextField("Exp", controller.date, "12/24"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildTextField("CVV", controller.cvv, "5678"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    "Save card info",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Obx(() => Switch(
                        inactiveTrackColor: Colors.grey,
                        value: controller.o.value,
                        activeColor: Colors.greenAccent,
                        splashRadius: 10,
                        onChanged: (value) {
                          controller.o.value = value;
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function for building text fields
  Widget buildTextField(
      String label, TextEditingController controller, String hintText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Color(0xfff8f8f8), width: 1),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                filled: true,
                fillColor: Color(0xfff8f8f8),
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Color(0xfff8f8f8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Color(0xfff8f8f8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(color: Color(0xfff8f8f8)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
