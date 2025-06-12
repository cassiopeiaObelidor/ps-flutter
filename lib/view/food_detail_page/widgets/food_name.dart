import 'package:flutter/material.dart';
import 'package:food_order_ui/configuration/food.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';

// ignore: must_be_immutable
class FoodName extends StatefulWidget {
  Food food;
  FoodName({required this.food});

  @override
  _FoodNameState createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.food.foodName}",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.screenHeight! / 22.77,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          "\₱${widget.food.foodPrice}",
          style: TextStyle(
            color: Colors.black87,
            fontSize: SizeConfig.screenHeight! / 22.77,
          ),
        ),
      ],
    );
  }
}
