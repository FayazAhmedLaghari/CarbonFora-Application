import 'package:flutter/material.dart';
import 'package:carbonfora_application/OnbordingScreen2.dart';
import 'package:carbonfora_application/Widegts/AppColors.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/onbord1.png', // Ensure it's listed in pubspec.yaml
              fit: BoxFit.cover,
            ),
          ),
          // Back Button
          Positioned(
            top: 48,
            left: 24,
            child: InkWell(
              onTap: () => Navigator.pop(context),
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
          // Bottom Overlay and Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6),
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Headline
                  Text(
                    'Turn habits into\nclimate action',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Underline image
                  Image.asset(
                    'assets/lines.png',
                    width: 100,
                    height: 16,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 16),

                  // Subtitle
                  Text(
                    'Track eco-friendly steps. Earn real rewards.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
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
                            builder: (context) => OnboardingScreen2()),
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
