import 'package:flutter/material.dart';
import 'package:food_order_ui/view/login_page/widgets/text_field_widget/text_field_input.dart';
// import 'package:food_order_ui/view/login_page/widgets/text_field_widget/text_field_password.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  String selectedDomain = 'Store Manager'; // Change the initial value

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 16), // Add horizontal padding to the overall widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal:
                    35), // Adjust the horizontal padding of the selection field
            child: Row(
              children: [
                Icon(Icons.qr_code_scanner),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    width: double
                        .infinity, // Set the width to fill the available space
                    child: DropdownButtonFormField<String>(
                      value: selectedDomain,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDomain = newValue!;
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey), // Add underline color
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          TextFieldInput(
            text: "email",
            iconName: Icons.mail,
            ltext: "Email",
            obscureText: false, // Add the required argument
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                // Perform some action when the icon is pressed
              },
            ), // Add the required argument
          ), // Email text field
          SizedBox(height: 8),
          TextFieldInput(
            text: "password",
            iconName: Icons.vpn_key,
            ltext: "Password",
            obscureText: true, // Add the required argument
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                // Perform some action when the icon is pressed
              },
            ), // Add the required argument
          ), // Password text field
        ],
      ),
    );
  }
}
