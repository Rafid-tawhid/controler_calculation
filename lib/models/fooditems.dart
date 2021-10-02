import 'package:flutter/cupertino.dart';

FoodItemList foodItemList = FoodItemList(fooditems: [
  FoodItem(
      id: 1,
      title: "Burger",
      hotel: "Madchef",
      price: 150,
      imgUrl:
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
  FoodItem(
      id: 2,
      title: "Pizza",
      hotel: "Pizzaburg",
      price: 750,
      imgUrl:
      "https://cdn.britannica.com/08/177308-050-94D9D6BE/Food-Pizza-Basil-Tomato.jpg"),
  FoodItem(
      id: 3,
      title: "Swarma",
      hotel: "Swarma House",
      price: 250,
      imgUrl:
      "https://www.aheadofthyme.com/wp-content/uploads/2021/07/chicken-shawarma-3-683x1024.jpg"),
  FoodItem(
      id: 4,
      title: "Ramen",
      hotel: "Cafe Famus",
      price: 300,
      imgUrl:
      "https://www.kitchensanctuary.com/wp-content/uploads/2020/12/Quick-Chicken-Ramen-square-FS-22.jpg"),
  FoodItem(
      id: 5,
      title: "Soup",
      hotel: "Chinese",
      price: 200,
      imgUrl:
      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1074500_11-4325965.jpg?quality=90&resize=500,454"),

]);

class FoodItemList {
  late List<FoodItem> fooditems;

  FoodItemList({required this.fooditems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;

  FoodItem(
      {required this.id,
      required this.title,
      required this.hotel,
      required this.price,
      required this.imgUrl,
      this.quantity = 1});
  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}
