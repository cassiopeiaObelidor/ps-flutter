import 'package:flutter/material.dart';
// import 'package:food_order_ui/view/checkout_page/components/checkbox_save.dart';
import 'package:food_order_ui/view/checkout_page/components/checkout_textfield.dart';
import 'package:food_order_ui/view/checkout_page/components/page_name.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageName(text_name: "Complete name"),
          CheckoutTextField(
            enter_text: "Enter complete name",
            size_width: 1.18,
          ), //350
          PageName(text_name: "Address"),
          CheckoutTextField(
            enter_text: "Enter address",
            size_width: 1.18,
          ),
          PageName(text_name: "Contact number"),
          CheckoutTextField(
            enter_text: "Enter contact number",
            size_width: 1.18,
          ),
          PageName(text_name: "Email address"),
          CheckoutTextField(
            enter_text: "Enter email address",
            size_width: 1.18,
          ),
          PageName(text_name: "Down payment"),
          CheckoutTextField(
            enter_text: "Enter down payment",
            size_width: 1.18,
          ),
        ],
      ),
    );
  }
}
