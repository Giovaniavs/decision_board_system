import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:flutter/material.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class RedLongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isLoading;

  const RedLongButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
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
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: SpacingTokens.deka),
                  child: Icon(Icons.restore),
                ),
              ],
            ),
    );
  }
}
