import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/typography_tokens.dart';

@immutable
class DBTextStyles {
  final TextStyle style;

  const DBTextStyles._(this.style);

  static DBTextStyles headline1 = DBTextStyles._(
    GoogleFonts.inter(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
    ),
  );
}
