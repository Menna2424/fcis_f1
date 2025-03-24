import 'package:fcis_f1/core/utils/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart'; // Import جديد

import '../../core/utils/routes_manager.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? fullName;
  String? email;
  String? university;
  String? college;
  String? academicYear;
  String? jobTitle;
  String? phoneNumber;
  String? linkedIn;
  String? location;
  String? bio;
  String? skills;
  String? status;
  List<String>? interests;
  String? profileImagePath;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      fullName = prefs.getString('fullName');
      email = prefs.getString('email');
      university = prefs.getString('university');
      college = prefs.getString('college');
      academicYear = prefs.getString('academicYear');
      jobTitle = prefs.getString('JobTitle');
      phoneNumber = prefs.getString('phoneNumber');
      linkedIn = prefs.getString('linkedIn');
      location = prefs.getString('location');
      bio = prefs.getString('bio');
      skills = prefs.getString('skills');
      status = prefs.getString('status');
      interests = prefs.getStringList('interests');
      profileImagePath = prefs.getString('profileImagePath');
    });
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        profileImagePath = pickedFile.path;
      });

      // احفظ الصورة الجديدة
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('profileImagePath', profileImagePath!);
    }
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false); // مسح فلاج الدخول
    Navigator.of(context).pushReplacementNamed(RoutsManager.loginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            height: 290,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ColorsManager.darkGrey, ColorsManager.backGroundColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: pickImage,
                    child: profileImagePath != null
                        ? CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(File(profileImagePath!)),
                    )
                        : CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 50, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tap to edit photo',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  SizedBox(height: 15),
                  Text(
                    fullName ?? 'Your Name',
                    style: TextStyle(color: ColorsManager.darkGrey, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    jobTitle != null && jobTitle!.isNotEmpty ? jobTitle! : status ?? '',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
                        ],
                      ),
                      child: ListView(
                        children: [
                          profileTile(Icons.email, 'Email', email),
                          profileTile(Icons.school, 'University', university),
                          profileTile(Icons.account_balance, 'College', college),
                          profileTile(Icons.calendar_today, 'Academic Year', academicYear),
                          profileTile(Icons.phone, 'Phone', phoneNumber),
                          profileTile(Icons.location_on, 'Location', location),
                          profileTile(Icons.link, 'LinkedIn', linkedIn),
                          profileTile(Icons.info_outline, 'Bio', bio),
                          profileTile(Icons.star, 'Skills', skills),
                          Divider(),
                          Text('Interested Fields:', style: TextStyle(fontWeight: FontWeight.bold)),
                          interests != null
                              ? Wrap(
                            spacing: 8.0,
                            children: interests!
                                .map((e) => Chip(
                              label: Text(
                                e,
                                style: TextStyle(color: ColorsManager.backGroundColor),
                              ),
                              backgroundColor: ColorsManager.darkGrey,
                            ))
                                .toList(),
                          )
                              : Text('No interests selected'),
                          SizedBox(height: 20),
                          ElevatedButton.icon(
                            onPressed: logout,
                            icon: Icon(
                              Icons.logout,
                              color: ColorsManager.backGroundColor,
                            ),
                            label: Text(
                              'Logout',
                              style: TextStyle(color: ColorsManager.backGroundColor),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsManager.darkGrey,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget profileTile(IconData icon, String title, String? value) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(value ?? ''),
    );
  }
}
