import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/typography_tokens.dart';

@immutable
class OpenReduTextStyles {
  final TextStyle style;

  const OpenReduTextStyles._(this.style);

  static OpenReduTextStyles headline1 = OpenReduTextStyles._(
    GoogleFonts.inter(
      fontSize: FontSizeTokens.weka,
      fontWeight: FontWeightTokens.light,
    ),
  );
}
