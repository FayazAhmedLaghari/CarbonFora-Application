import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const GradientButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1D8AA2), Color(0xFF402BB5)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
