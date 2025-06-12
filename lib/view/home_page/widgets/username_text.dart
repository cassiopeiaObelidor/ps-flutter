import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';

class UserNameText extends StatefulWidget {
  const UserNameText({Key? key}) : super(key: key);

  @override
  _UserNameTextState createState() => _UserNameTextState();
}

class _UserNameTextState extends State<UserNameText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.screenWidth! / 14.17,
        SizeConfig.screenHeight! / 23.55 - 10, // Adjusted
        SizeConfig.screenWidth! / 11.74,
        SizeConfig.screenHeight! / 68.3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight! / 70.38 - 5, // Adjusted
                      bottom: SizeConfig.screenHeight! / 80.84 - 5, // Adjusted
                    ),
                    child: Text(
                      "Partner Store",
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight! / 29.7,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "We build, We create, We customize",
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight! / 40.18,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: SizeConfig.screenHeight! / 5 - 10, // Adjusted
            width: SizeConfig.screenWidth! / 5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/main/avatar1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
