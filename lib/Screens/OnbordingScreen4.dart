// ignore_for_file: use_key_in_widget_constructors
import 'package:carbonfora_application/Screens/SplashScreen2.dart';
import 'package:flutter/material.dart';
import 'package:carbonfora_application/Widegts/AppColors.dart';

class OnboardingScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/onbord4.png',
              fit: BoxFit.fill,
              // width: double.infinity,
              // height: 500,
            ),
          ),
          SizedBox(height: 20),
          // Back Button
          Positioned(
            top: 48,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Go back to previous screen
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Bottom Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 36),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.6),
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                      children: [
                        TextSpan(text: 'Smart ,verified,'),
                        TextSpan(
                          text: 'count',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textWhite,
                      ),
                      children: [
                        TextSpan(text: 'Climate-Positive'),
                      ],
                    ),
                  ),

                  SizedBox(height: 6),
                  // Custom underline
                  Image.asset(
                    'assets/lines.png',
                    width: 100,
                    height: 15, // Adjust as needed based on your image
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 16),
                  Text(
                    'AI-driven,Blockchain-blocked.Easy to use.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 24),
                  // Page indicators
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: AppColors.cyan,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 32),
                  // Swipe button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreen2()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                colors: [Color(0xFF4834AA), Color(0xFF1D8AA2)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Swipe to start',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.chevron_right,
                                  color: Colors.grey.shade700),
                              Icon(Icons.chevron_right,
                                  color: Colors.grey.shade700),
                              Icon(Icons.chevron_right,
                                  color: Colors.grey.shade700),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
