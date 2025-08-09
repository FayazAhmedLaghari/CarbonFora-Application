// RegisterScreen.dart
import 'package:carbonfora_application/Screens/Auth/LoginScreen.dart';
import 'package:carbonfora_application/Widegts/AppColors.dart';
import 'package:flutter/material.dart';
import '../../Widegts/gradient_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool _rememberMe = false;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final gradientColors = [Color(0xFF1D8AA2), Color(0xFF402BB5)];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // Gradient Header Container
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: gradientColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 40), // space for the arrow icon
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Enter your registered email below to receive password reset instruction',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Back Arrow Icon
                Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0x1CFFFFFF), // 11% white opacity
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildTextField('First Name'),
                      SizedBox(height: 20),
                      _buildTextField('Last Name'),
                      SizedBox(height: 20),
                      _buildTextField('Email'),
                      SizedBox(height: 20),
                      _buildTextField('Password', obscure: true),
                      SizedBox(height: 20),
                      _buildTextField('Confirm Password', obscure: true),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                          ),
                          const Text('Remember me'),
                        ],
                      ),
                      SizedBox(height: 10),
                      GradientButton(
                        text: 'Sign Up',
                        onPressed: () {},
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen())),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xFF4834AA),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: const Color(0xFFF1F4FF),
        labelStyle: TextStyle(color: Colors.grey[700]),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF1D8AA2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
