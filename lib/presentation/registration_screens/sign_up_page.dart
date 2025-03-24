import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../core/utils/routes_manager.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController universityController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController academicYearController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController linkedInController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController JobTitleController = TextEditingController();




  String selectedStatus = 'Student'; // Default status
  List<String> statuses = ['Student', 'Graduate', 'Employee', 'Company Representative'];

  List<String> selectedInterests = [];
  List<String> interests = [
    'Web Development',
    'Mobile Development',
    'AI / Machine Learning',
    'Cyber Security',
    'Data Science',
    'Testing',
    'Other'
  ];

  File? _profileImage;

  // Pick Image
  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _profileImage = File(pickedFile.path);
      }
    });
  }

  // Save data function
  Future<void> saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('fullName', fullNameController.text);
    await prefs.setString('email', emailController.text);
    await prefs.setString('password', passwordController.text);
    await prefs.setString('university', universityController.text);
    await prefs.setString('college', collegeController.text);
    await prefs.setString('academicYear', academicYearController.text);
    await prefs.setString('jobTitle', JobTitleController.text);

    await prefs.setString('phoneNumber', phoneNumberController.text);
    await prefs.setString('linkedIn', linkedInController.text);
    await prefs.setString('location', locationController.text);
    await prefs.setString('bio', bioController.text);
    await prefs.setString('skills', skillsController.text);
    await prefs.setString('status', selectedStatus);
    await prefs.setStringList('interests', selectedInterests);
    if (_profileImage != null) {
      await prefs.setString('profileImagePath', _profileImage!.path);
    }

    // Navigate after saving
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data Saved Successfully!')));
    // You can navigate to Profile page here
  }

  // Validation functions
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  // Interest Selection Widget
  Widget buildInterestsSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: interests.map((interest) {
        return CheckboxListTile(
          title: Text(interest),
          value: selectedInterests.contains(interest),
          onChanged: (bool? value) {
            setState(() {
              if (value == true) {
                selectedInterests.add(interest);
              } else {
                selectedInterests.remove(interest);
              }
            });
          },
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40),

                  Text("Sign Up",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40),

                  GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _profileImage != null ? FileImage(_profileImage!) : null,
                      child: _profileImage == null ? Icon(Icons.add_a_photo, size: 50) : null,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: fullNameController,
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) => value!.isEmpty ? 'Please enter your full name' : null,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: validateEmail,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    obscureText: true,
                    validator: validatePassword,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    obscureText: true,
                    validator: validateConfirmPassword,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: universityController,
                    decoration: InputDecoration(
                      hintText: "University",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) => value!.isEmpty ? 'Please enter your university' : null,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: collegeController,
                    decoration: InputDecoration(
                      hintText: "College",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) => value!.isEmpty ? 'Please enter your college' : null,
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: academicYearController,
                    decoration: InputDecoration(
                      hintText: "Academic Year",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (value) => value!.isEmpty ? 'Please enter your academic year' : null,
                  ),
                  SizedBox(height: 15),

                  DropdownButtonFormField(
                    value: selectedStatus,
                    items: statuses
                        .map((status) => DropdownMenuItem(
                      value: status,
                      child: Text(status),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value.toString();
                      });
                    },
                    decoration: InputDecoration(labelText: 'Status'),
                  ),
                  SizedBox(height: 10),
                  Text('Interested Fields:', style: TextStyle(fontWeight: FontWeight.bold)),
                  buildInterestsSelection(),
                  TextFormField(
                    controller: JobTitleController,
                    decoration: InputDecoration(
                      hintText: "Job title",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: linkedInController,
                    decoration: InputDecoration(
                      hintText: "LinkedIn Profile (Optional)",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: locationController,
                    decoration: InputDecoration(
                      hintText: "Location",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: bioController,
                    decoration: InputDecoration(
                      hintText: "Bio",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextFormField(
                    controller: skillsController,
                    decoration: InputDecoration(
                      hintText: "Skills",
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        saveUserData();
                        Navigator.pushReplacementNamed(context, RoutsManager.loginScreen); // بعد التسجيل يروح للّوجين

                      }
                    },
                    child: Text('Sign Up'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
