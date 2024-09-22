import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var search = TextEditingController();
  // Controller for search input

  var shop1 = [
    ["https://image-url-1.jpg", "Product 1", "Description 1", "1000"],
    ["https://image-url-2.jpg", "Product 2", "Description 2", "1500"],
  ].obs;



  var Brands = [
    [
      "https://cdn.britannica.com/94/193794-050-0FB7060D/Adidas-logo.jpg",
      "Adidas"
    ],
    [
      "https://i.pinimg.com/736x/a8/48/87/a848873d2660998d2d2c37eaf24b3215.jpg",
      "Nike"
    ],
    [
      "https://www.logotypes101.com/logos/783/4E8982020446542B571B2C896FC2DDDB/FILA_Golf.png",
      "Fila"
    ],
    [
      "https://cdn.freebiesupply.com/logos/large/2x/puma-logo-png-transparent.png",
      "Puma"
    ],
    [
      "https://i.pinimg.com/736x/90/ec/70/90ec7075ace89e66430ade2c0afa1cb6.jpg",
      "Reebok"
    ]
  ].obs;

  var shop = [
    [
      "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1687842433_3385347.jpg?w=480&dpr=1.3",
      "Nike Sportswear Club",
      "Fieece",
      "99",
    ],
    [
      "https://assets.ajio.com/medias/sys_master/root/20231214/xIDk/657ad736afa4cf41f5cff63e/-473Wx593H-464531848-navy-MODEL.jpg",
      "Trail Running Jacket Nike",
      "Windrunner",
      "80",
    ],
    [
      "https://www.redwolf.in/image/cache/catalog/mens-t-shirts/batman-grey-logo-full-sleeve-t-shirt-india-model-front-2-600x800.jpg?m=1687857471",
      "Trail Running Jacket Nike",
      "Fieece",
      "119",
    ],
    [
      "https://www.redwolf.in/image/cache/catalog/mens-t-shirts/oversized/marvel-spiderman-miles-morales-urban-oversized-t-shirt-india-female-mock-back-600x800.jpg?m=1693562973",
      "Nike Sportswear Club",
      "Fieece",
      "149",
    ],
    [
      "https://www.redwolf.in/image/cache/catalog/mens-t-shirts/i-hate-mornings-t-shirt-india-model-600x800.jpg?m=1688562309",
      "Trail Running Jacket Nike",
      "Windrunner",
      "109",
    ],
    [
      "https://www.redwolf.in/image/cache/catalog/mens-t-shirts/drop-cut/slytherin-motto-drop-cut-t-shirt-india-600x800.jpg?m=1695726667",
      "Nike Sportswear Club",
      "Fieece",
      "99",
    ],
  ].obs;
}