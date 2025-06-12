import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_order_ui/view/cart_page/cart_view.dart';
// import 'package:food_order_ui/view/calendar_page/calendar_page.dart';
import 'package:food_order_ui/view/home_page/components/colors.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/home_page/home_page_view.dart';
import 'package:food_order_ui/view/profile_page/profile_page_view.dart';
import 'package:food_order_ui/view/customer_design/customer_design.dart';
import 'package:food_order_ui/view/catalog_page/catalog_view.dart'; // Import CatalogView

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screen = [
    HomePageView(),
    CatalogView(),
    CartView(), // Add CatalogView to the screen list
    CustomerDesign(),

    // Calendar(),
    ProfilePageView(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home, size: SizeConfig.screenHeight! / 22.77),
      Icon(Icons.airplay_outlined, size: SizeConfig.screenHeight! / 22.77),
      Icon(Icons.shopping_cart, size: SizeConfig.screenHeight! / 22.77),
      Icon(Icons.brush_rounded, size: SizeConfig.screenHeight! / 22.77),
      // Icon(Icons.calendar_month, size: SizeConfig.screenHeight! / 22.77),
      Icon(Icons.person, size: SizeConfig.screenHeight! / 22.77),
    ];
    return Container(
      color: buttonColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          body: screen[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: Colors.black45,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: buttonColor,
              height: SizeConfig.screenHeight! / 11.39,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 400),
              index: index,
              items: items,
              onTap: (index) => setState(() => this.index = index),
            ),
          ),
        ),
      ),
    );
  }
}
