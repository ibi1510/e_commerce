import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  var name = TextEditingController();
  var num = TextEditingController();
  var date = TextEditingController();
  var cvv = TextEditingController();

  var o = false.obs;  // Observable for switch value

  List<String> card = [
    "https://www.visa.co.in/dam/VCOM/regional/ap/india/global-elements/images/in-visa-classic-card-498x280.png",
    "https://www.centralbankofindia.co.in/sites/default/files/2021-04/simply-save-card.jpg"
  ];

// Additional methods for handling logic can be placed here
}
