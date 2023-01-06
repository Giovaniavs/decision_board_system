import 'package:flutter/material.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/color_tokens.dart';

class BlueLongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const BlueLongButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorTokens.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        side: const BorderSide(
          width: 1.0,
          color: ColorTokens.primary,
        ),
        minimumSize: const Size(double.infinity, 48),
        elevation: 0.0,
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}