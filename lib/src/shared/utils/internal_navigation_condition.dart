import 'dart:io';

import 'package:flutter/material.dart';

bool internalNavigationCondition({
  required BuildContext context,
  required bool internalNavigator,
}) {
  bool condition = false;

  if (Platform.isIOS) {
    condition =
        internalNavigator && Navigator.of(context).userGestureInProgress;
  } else {
    condition = internalNavigator;
  }

  return condition;
}
