import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/colors_manager.dart';
import '../../core/utils/routes_manager.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? savedEmail = prefs.getString('email');
    String? savedPassword = prefs.getString('password');

    await Future.delayed(Duration(seconds: 1)); // Just to show loading

    if (savedEmail == null || savedPassword == null) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No account found, please Sign Up first.')),
      );
      return;
    }

    if (email == savedEmail && password == savedPassword) {
      // Success
      await prefs.setBool('isLoggedIn', true); // ✅ Add login flag
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login successful')),
      );

      Navigator.pushReplacementNamed(context, RoutsManager.mainScrean);
    } else {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Incorrect email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'FcisF1',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.darkGrey,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Text("Email", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(12)),
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Password", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(12)),
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(height: 40),
                _isLoading
                    ? CircularProgressIndicator(color: Colors.black)
                    : ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(240, 40), backgroundColor: Colors.black),
                  onPressed: _login,
                  child: Text('Login', style: TextStyle(color: ColorsManager.backGroundColor)),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutsManager.signUpScreen);
                  },
                  child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
