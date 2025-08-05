import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacer
                SizedBox(height: 40),
                // Splash Image with reduced height
                Image.asset(
                  'assets/splashimg.png',
                  height: constraints.maxHeight * 0.3, // 30% of screen height
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 30),
                // Title Text
                Text(
                  'Get Started with\nCarbonFora',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 12.0),

                // Description
                Text(
                  'Join the movement. Track eco-actions, earn carbon credits, and unlock real rewards for making climate-positive choices daily.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),

                SizedBox(height: 30.0),

                // Registration button
                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF4834AA), Color(0xFF1D8AA2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Registration button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 0,
                      surfaceTintColor: Colors.transparent,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Registration',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.0),

                // Sign In button
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {
                      print('Sign In button pressed');
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(color: Colors.black, width: 1.0),
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
