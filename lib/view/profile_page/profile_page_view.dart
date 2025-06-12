import 'package:flutter/material.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/profile_page/widgets/top_custom_shape.dart';
import 'package:food_order_ui/view/profile_page/widgets/user_sections.dart';
import 'package:food_order_ui/view/start_page/start_page_view.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopCustomShape(),
          SizedBox(
            height: SizeConfig.screenHeight! / 34.15,
          ),

          /// 20.0
          UserSection(
            icon_name: Icons.account_circle,
            section_text: "Partner store information",
            onTap: () {},
          ),
          UserSection(
            icon_name: Icons.shopping_basket,
            section_text: "Recent orders",
            onTap: () {},
          ),
          UserSection(
            icon_name: Icons.analytics,
            section_text: "Sales Report",
            onTap: () {},
          ),
          UserSection(
            icon_name: Icons.list_alt,
            section_text: "Inventory",
            onTap: () {},
          ),
          UserSection(
            icon_name: Icons.assignment,
            section_text: "Task",
            onTap: () {},
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartPageView(),
                ),
              );
            },
            child: UserSection(
              icon_name: Icons.exit_to_app,
              section_text: "Logout",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
