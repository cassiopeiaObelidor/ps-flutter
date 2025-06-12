import 'package:flutter/material.dart';
import 'package:food_order_ui/view/login_page/widgets/text_field_widget/text_field_input.dart';
import 'package:food_order_ui/view/login_page/widgets/text_field_widget/text_field_password.dart';

class RegisterTextField extends StatefulWidget {
  const RegisterTextField({Key? key}) : super(key: key);

  @override
  _RegisterTextFieldState createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  String? selectedDomain; // Default selection

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16), // Add some spacing
          Container(
            width:
                465, // Set a narrower width for the selection field container
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey), // Add line decoration
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.qr_code_scanner),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedDomain,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedDomain = newValue;
                      });
                    },
                    items: <String>[
                      'Store Manager',
                      'Supervisor',
                      'Owner',
                      'Printing Staff',
                      'Tailoring Staff',
                      'Quality Checker',
                      'Delivery Staff',
                      'Graphic Artist',
                      'Accounting',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove border
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16), // Add some spacing
          TextFieldInput(
            text: "Name",
            iconName: Icons.account_circle,
            ltext: "Name",
            obscureText: false,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                // Perform some action when the icon is pressed
              },
            ),
          ),
          SizedBox(height: 16), // Add some spacing
          TextFieldInput(
            text: "email",
            iconName: Icons.mail,
            ltext: "Email",
            obscureText: false,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                // Perform some action when the icon is pressed
              },
            ),
          ),
          SizedBox(height: 16), // Add some spacing
          TextFieldPassword(),
          SizedBox(height: 16), // Add some spacing
          TextFieldInput(
            text: "password",
            iconName: Icons.vpn_key,
            ltext: "Re-enter password",
            obscureText: true,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                // Perform some action when the icon is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
