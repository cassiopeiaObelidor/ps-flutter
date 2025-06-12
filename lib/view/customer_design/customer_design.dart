import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_order_ui/view/bottom_navigator.dart';
import 'package:food_order_ui/view/calendar_page/calendar_page.dart';
import 'package:image_picker/image_picker.dart';

class CustomerDesign extends StatefulWidget {
  CustomerDesign({Key? key}) : super(key: key);

  @override
  _CustomerDesignState createState() => _CustomerDesignState();
}

class _CustomerDesignState extends State<CustomerDesign> {
  TextEditingController _descriptionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> _selectImage() async {
    final XFile? selectedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = selectedImage;
    });
  }

  Future<void> _uploadDesign() async {
    if (_imageFile != null) {
      // Perform the upload process here
      // Replace this code with your actual implementation
      String filePath = _imageFile!.path;
      // ignore: unused_local_variable
      File file = File(filePath);

      // Example implementation: Print the file path
      print('Uploaded file path: $filePath');

      // Navigate to the Calendar page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Calendar(),
        ),
      );
    } else {
      // No image selected, show an error message or handle accordingly
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('Error'),
          content: Text('Please select an image to upload.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

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
                height: 932,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 36,
                      child: Container(
                        width: 381,
                        height: 71,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 8,
                              child: Text(
                                'Partner Store',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 41,
                              child: Text(
                                'We build, We create, We customized',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 303,
                              top: 0,
                              child: Container(
                                width: 78,
                                height: 71,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 78,
                                        height: 71,
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: CircleBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 1.30,
                                      top: 0,
                                      child: Container(
                                        width: 76.70,
                                        height: 67.45,
                                        child: Image.asset(
                                          'assets/main/avatar1.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 165,
                      top: 198,
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: GestureDetector(
                          onTap:
                              _selectImage, // Call the function to select image on tap
                          child: _imageFile != null
                              ? Image.file(
                                  File(_imageFile!.path),
                                  fit: BoxFit.cover,
                                )
                              : Icon(
                                  Icons.photo,
                                  size: 100,
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 86,
                      top: 313,
                      child: Container(
                        width: 257,
                        height: 36,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 257,
                                height: 36,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFC60612),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 53,
                              top: 7,
                              child: Text(
                                'UPLOAD DESIGN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: _uploadDesign,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 41,
                      top: 377,
                      child: Container(
                        width: 349,
                        height: 259,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 349,
                                height: 259,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE9E9E9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: TextField(
                                  controller: _descriptionController,
                                  maxLines: null, // Allow multiple lines
                                  decoration: InputDecoration(
                                    hintText: 'Description...',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 272,
                      top: 650,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the Calendar page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Calendar(),
                            ),
                          );
                        },
                        child: Container(
                          width: 118,
                          height: 29,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 118,
                                  height: 29,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFC60612),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 3,
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
