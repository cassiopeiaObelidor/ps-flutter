import 'package:flutter/material.dart';
import 'package:food_order_ui/view/bottom_navigator.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String? selectedMonth;
  String? selectedDay;
  String? selectedYear;
  String? selectedMonth2;
  String? selectedDay2;
  String? selectedYear2;
  String? firstName; // Added field for first name
  String? selectedProduct;
  String? selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 430,
                height: 937,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 45,
                      child: Text(
                        'Partner Store',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 120,
                      child: Text(
                        'Date request',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We build, We create, We customized',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 331,
                      top: 31,
                      child: Container(
                        width: 69,
                        height: 71,
                        decoration: ShapeDecoration(
                          color: Color(0xFF111111),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 327,
                      top: 32,
                      child: Container(
                        width: 79,
                        height: 66,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/main/logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 290,
                      top: 600,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 118,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 118,
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE70806),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 32,
                                top: 0,
                                child: SizedBox(
                                  width: 64,
                                  height: 18,
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 150,
                      child: Container(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonFormField<String>(
                              value: selectedMonth,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                labelText: 'Month',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              items: <String>[
                                'Jan',
                                'Feb',
                                'Mar',
                                'Apr',
                                'May',
                                'Jun',
                                'Jul',
                                'Aug',
                                'Sep',
                                'Oct',
                                'Nov',
                                'Dec',
                              ].map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedMonth = newValue;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Delivery date',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 150,
                      child: Container(
                        width: 120,
                        child: DropdownButtonFormField<String>(
                          value: selectedDay,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Day',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          items: List<String>.generate(
                                  31, (index) => (index + 1).toString())
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDay = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 275,
                      top: 150,
                      child: Container(
                        width: 130,
                        child: DropdownButtonFormField<String>(
                          value: selectedYear,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Year',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          items: List<String>.generate(
                                  10, (index) => (2022 + index).toString())
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedYear = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 230,
                      child: Container(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonFormField<String>(
                              value: selectedMonth2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                labelText: 'Month',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              items: <String>[
                                'Jan',
                                'Feb',
                                'Mar',
                                'Apr',
                                'May',
                                'Jun',
                                'Jul',
                                'Aug',
                                'Sep',
                                'Oct',
                                'Nov',
                                'Dec',
                              ].map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedMonth2 = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 230,
                      child: Container(
                        width: 120,
                        child: DropdownButtonFormField<String>(
                          value: selectedDay2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Day',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          items: List<String>.generate(
                                  31, (index) => (index + 1).toString())
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDay2 = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 275,
                      top: 230,
                      child: Container(
                        width: 130,
                        child: DropdownButtonFormField<String>(
                          value: selectedYear2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Year',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          items: List<String>.generate(
                                  10, (index) => (2022 + index).toString())
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedYear2 = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 300, // Adjusted position for the "firstName" field
                      child: Container(
                        width: 380,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'First Name',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onChanged: (value) {
                            setState(() {
                              firstName = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 360, // Adjusted position for the "firstName" field
                      child: Container(
                        width: 380,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Last Name',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onChanged: (value) {
                            setState(() {
                              firstName = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 420, // Adjusted position for the "firstName" field
                      child: Container(
                        width: 380,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Email Address',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onChanged: (value) {
                            setState(() {
                              firstName = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 480, // Adjusted position for the "firstName" field
                      child: Container(
                        width: 380,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            labelText: 'Phone Number',
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onChanged: (value) {
                            setState(() {
                              firstName = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top:
                          540, // Adjusted position for the dropdown selection row
                      child: Row(
                        children: [
                          Container(
                            width: 180,
                            child: DropdownButtonFormField<String>(
                              value: selectedProduct,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.grey),
                                ),
                                labelText: 'Product',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              items: <String>[
                                'Hoodie',
                                'Long sleeve',
                                'Jersey',
                                'T-shirt',
                                'Short',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedProduct = newValue;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 180,
                            child: DropdownButtonFormField<String>(
                              value: selectedQuantity,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.grey),
                                ),
                                labelText: 'Quantity',
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              items: <String>[
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6',
                                '7',
                                '8',
                                '9',
                                '10',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedQuantity = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
