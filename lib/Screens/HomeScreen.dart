// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  final gradientColors = [Color(0xFF1D8AA2), Color(0xFF402BB5)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Profile Row
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1)
                        // Optional background
                        ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile.png', // Replace with your SVG path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Huzaifa Arain",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "45.2 kg CO₂e Saved",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    padding: const EdgeInsets.all(
                        8), // Optional padding inside the circle
                    child: Image.asset(
                      'assets/competetion.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    padding: const EdgeInsets.all(
                        8), // Optional padding inside the circle
                    child: Image.asset(
                      'assets/notification.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              /// Carbon & CO2 Cards
              Row(
                children: [
                  _infoCard("Carbon Credit", "12.6", 'assets/credit.svg'),
                  const SizedBox(width: 16),
                  _infoCard("Total CO₂ Saved", "3.1 kg CO₂e", 'assets/co2.svg'),
                ],
              ),
              const SizedBox(height: 12),

              /// Dollar Value Earned
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _boxDecoration(),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: const Icon(
                        Icons.attach_money,
                        color: Colors.white, // Icon color
                        size: 24, // Icon size
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Dollar Value Earned",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 18,
                    ),
                    Spacer(),
                    Text(
                      "\$1.47",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              /// Streak Achievements Title
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Streaks Achievements",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),

              /// Streak Cards
              _achievementCard(
                title: "You’re on a 6-day streak",
                subtitle: "Log daily actions to keep the fire alive",
                progress: 3,
                svgAsset: 'assets/fire_frame.png',
              ),
              const SizedBox(height: 12),

              _achievementCard(
                title: "3 Actions Logged This Week",
                subtitle: "e.g., goal = 5 actions/week",
                progress: 1,
                svgAsset: 'assets/medal.png',
              ),
              const SizedBox(height: 12),

              /// First Ride Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _boxDecoration(),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage('assets/ellip3.png'),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("First Ride",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("✅ Earned",
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text("Level 1",
                          style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),

              /// Redeem Teaser
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Redeem Teaser",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  _redeemCard('Redeem', '10 credits', 'assets/redeem.png'),
                  _redeemCard(
                      'Skincare gift', '30 credits', 'assets/skincare.png'),
                ],
              ),

              const SizedBox(height: 60), // space for bottom nav
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1
        ),
        color: Color(0xFF402BB5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavBarItem(icon: Icons.bar_chart, isSelected: false),
              _buildNavBarItem(
                  icon: CupertinoIcons.creditcard, isSelected: false),
              _buildMiddleNavBarItem(icon: Icons.sync, isSelected: true),
              _buildNavBarItem(
                  icon: Icons.currency_exchange, isSelected: false),
              _buildNavBarItem(icon: CupertinoIcons.person, isSelected: false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavBarItem({required IconData icon, required bool isSelected}) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
      onPressed: () {},
    );
  }

  Widget _buildMiddleNavBarItem(
      {required IconData icon, required bool isSelected}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Color(0xFF402BB5),
        size: 32,
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20),
    );
  }

  Widget _infoCard(String title, String value, String svgAsset) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0x2EFFFFFF), // 18% white opacity
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.transparent, // Optional: keeps background see-through
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              svgAsset,
              color: Colors.white,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value.split(' ')[0], // Numeric part
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (value.split(' ').length > 1)
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      value.split(' ').sublist(1).join(' '), // Unit part
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.split(' ').first,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                if (title == 'Carbon Credit') ...[
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 14,
                  ),
                ] else ...[
                  for (var i = 1; i < title.split(' ').length; i++)
                    Text(
                      ' ${title.split(' ')[i]}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      gradient: const LinearGradient(
        colors: [Color(0xFF3498db), Color(0xFF2980b9)], // Example gradient
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  Widget _achievementCard({
    required String svgAsset,
    required String title,
    required String subtitle,
    required int progress,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Image.asset(
                  svgAsset,
                  width: 15,
                  height: 15,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white60, fontSize: 12),
          ),
          const SizedBox(height: 12),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: index < progress ? Colors.white : Colors.white24,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _redeemCard(String title, String credits, String assetPath) {
    return Expanded(
      child: Container(
        height: 130,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0x2EFFFFFF), // 18% opacity white
            width: 1,
          ),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 48,
              width: 48,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              credits,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
