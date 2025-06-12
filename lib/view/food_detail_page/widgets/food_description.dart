import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! / 45.54),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 8),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Dictum viverra at lorem morbi risus ut eleifend. Nec ut mattis massa vestibulum egestas sit ultrices. Egestas et sed enim purus. Nibh varius nec magna elit est sed.",
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 16), // Add additional spacing here
          Text(
            "Available Sizes:  XS, S, M, L, XL",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
