import 'package:food_order_ui/configuration/food.dart';

Future<List<Food>> bringTheFoods() async {
  var foodList = <Food>[];

  var f1 = Food(
      foodId: 1,
      foodName: "Hoodie",
      foodImageName: "assets/food/hoodie1.png",
      foodCategory: "Jacket",
      foodPrice: "800");
  var f2 = Food(
      foodId: 2,
      foodName: "Long sleeve V1",
      foodImageName: "assets/food/longsleeve1.png",
      foodCategory: "Long sleeve",
      foodPrice: "550");
  var f3 = Food(
      foodId: 3,
      foodName: "Long sleeve V2",
      foodImageName: "assets/food/longsleeve2.png",
      foodCategory: "long sleeve",
      foodPrice: "550");
  var f4 = Food(
      foodId: 4,
      foodName: "Chinese collar",
      foodImageName: "assets/food/chinesecollar1.png",
      foodCategory: "Polo",
      foodPrice: "500");
  var f5 = Food(
      foodId: 5,
      foodName: "Chinese collar",
      foodImageName: "assets/food/polo1.png",
      foodCategory: "Polo",
      foodPrice: "500");
  var f6 = Food(
      foodId: 6,
      foodName: "Jersey set",
      foodImageName: "assets/food/jerseyset1.png",
      foodCategory: "Jersey",
      foodPrice: "600");
  var f7 = Food(
      foodId: 7,
      foodName: "Vneckline Gaming",
      foodImageName: "assets/food/vnecklinegaming1.png",
      foodCategory: "T-shirt",
      foodPrice: "550");
  var f8 = Food(
      foodId: 8,
      foodName: "T-shirt Vneck",
      foodImageName: "assets/food/tshirtvneck1.png",
      foodCategory: "T-shirt",
      foodPrice: "450");
  var f9 = Food(
      foodId: 9,
      foodName: "T-shirt round",
      foodImageName: "assets/food/tshirtround1.png",
      foodCategory: "T-shirt",
      foodPrice: "450");

  foodList.add(f1);
  foodList.add(f2);
  foodList.add(f3);
  foodList.add(f4);
  foodList.add(f5);
  foodList.add(f6);
  foodList.add(f7);
  foodList.add(f8);
  foodList.add(f9);

  return foodList;
}
