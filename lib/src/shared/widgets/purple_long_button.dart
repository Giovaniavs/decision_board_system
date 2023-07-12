import 'package:flutter/material.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class PurpleLongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const PurpleLongButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: BaseColors.purpleButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        side: const BorderSide(
          width: 1.0,
          color: BaseColors.primary,
        ),
        minimumSize: const Size(500, 48),
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
