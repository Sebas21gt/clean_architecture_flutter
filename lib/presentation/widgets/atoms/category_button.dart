import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {

  const CategoryButton({
    required this.title,
    required this.color,
    required this.onTap,
    super.key,
  });

  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: -40,
              bottom: -20,
              child: Image.asset(
                'assets/poke_ball_icon.png',
                width: 100,
                height: 100,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
