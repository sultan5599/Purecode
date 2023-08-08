import 'package:flutter/material.dart';

class ServiceBox extends StatelessWidget {
  final Color color;
  final Widget imagePath;
  final String title;
  final String description;

  const ServiceBox({
    super.key,
    required this.color,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        width: 289,
        height: 385,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: imagePath,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2CA59D),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xFF2CA59D),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
