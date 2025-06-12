// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:food_order_ui/purchase_order_form/purchase_order_form.dart';
import 'package:food_order_ui/view/checkout_page/checkout_page_view.dart';
import 'package:food_order_ui/view/home_page/components/colors.dart';
import 'package:food_order_ui/view/home_page/components/size_config.dart';
import 'package:food_order_ui/view/purchase_order_form.dart'; // Import PurchaseOrderForm

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to PurchaseOrderForm instead of CheckoutPageView
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => PurchaseOrderForm()),
        );
      },
      child: Container(
        width: SizeConfig.screenWidth! / 1.02,
        height: SizeConfig.screenHeight! / 12.42,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            "Purchase Order",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.screenHeight! / 34.15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
