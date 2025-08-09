// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:carbonfora_application/Screens/Auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController otpController = TextEditingController();
  final gradientColors = [Color(0xFF1D8AA2), Color(0xFF402BB5)];
  int secondsRemaining = 48;
  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

  Timer? _timer;

  void startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondsRemaining == 0) {
        timer.cancel();
      } else {
        if (mounted) {
          setState(() {
            secondsRemaining--;
          });
        } else {
          timer.cancel(); // Stop timer if widget is not mounted
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // App Bar Area

            Expanded(
              child: SingleChildScrollView(
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
                              SizedBox(height: 40), // Leave space for arrow
                              Text(
                                'Enter Verification Code',
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

                        // Back Arrow Icon (same as others)
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
                                color: const Color(
                                    0x1CFFFFFF), // 11% white opacity
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

                    // Title
                    Text(
                      "Enter Verification code",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Enter your registered email below to receive\npassword reset instruction",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),

                    // White Card
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.black12,
                        //       blurRadius: 10,
                        //       offset: Offset(0, 4),
                        //     ),
                        //   ],
                        // ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/verification.png',
                            height: 80,
                          ),
                          SizedBox(height: 20),
                          // OTP Fields
                          PinCodeTextField(
                            appContext: context,
                            length: 5,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 50,
                              fieldWidth: 50,
                              activeColor: Color(0xFF402BB5),
                              selectedColor: Color(0xFF1D8AA2),
                              inactiveColor: Colors.grey[300]!,
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            controller: otpController,
                            onChanged: (value) {},
                          ),

                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Didn't receive the code? "),
                              GestureDetector(
                                onTap: () {
                                  // Resend logic here
                                },
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                    color: Color(0xFF4834AA), // Updated color
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "00:${secondsRemaining.toString().padLeft(2, '0')}",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),

                          SizedBox(height: 30),

                          // Verify Button
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [Color(0xFF1D8AA2), Color(0xFF402BB5)],
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
