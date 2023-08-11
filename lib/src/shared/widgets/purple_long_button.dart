import 'package:flutter/material.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class PurpleLongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isLoading;

  const PurpleLongButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.isLoading,
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
      child: isLoading
          ? const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
          : Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
    );
  }
}
