// ignore_for_file: public_member_api_docs

import 'package:app_test/colors.dart';
import 'package:flutter/material.dart';

enum ButtonVariant { filled, outlined }

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.icon,
    this.iconAtStart = true,
    this.variant = ButtonVariant.filled,
    this.buttonWidth,
    this.buttonHeight,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool iconAtStart;
  final ButtonVariant variant;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = variant == ButtonVariant.outlined
        ? OutlinedButton.styleFrom(
            foregroundColor: FavorcitoColors.secondary,
            side: const BorderSide(color: FavorcitoColors.secondary),
            minimumSize: Size(buttonWidth ?? 0, buttonHeight ?? 48),
            textStyle: const TextStyle(
              color: FavorcitoColors.secondary,
            ),
          )
        : ElevatedButton.styleFrom(
            backgroundColor: FavorcitoColors.secondary,
            foregroundColor: FavorcitoColors.primary,
            minimumSize: Size(buttonWidth ?? 0, buttonHeight ?? 48),
          );

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null && iconAtStart) Icon(icon, size: 30),
        if (icon != null) const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (icon != null && !iconAtStart) ...[
          const SizedBox(width: 8),
          Icon(icon, size: 30),
        ],
      ],
    );

    return SizedBox(
      width: buttonWidth,
      child: variant == ButtonVariant.outlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: child,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: buttonStyle,
              child: child,
            ),
    );
  }
}
