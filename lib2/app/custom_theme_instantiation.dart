import 'package:flutter/material.dart';
import 'package:smooth_rotation/theme_extension/theme.dart';

/// This is the implemented [CustomThemeExtension].
final instantiatedCustomTheme = CustomThemeExtension(
  clientName: 'Acme Anvil Company',
    clientSlogan: 'Special Delivery Hare Mail',
    clientStreetAddress: '123 Nowhere Street',
    clientCity: 'InTheSticks',
    clientCountryCode: 'Antarctica',
    clientPhone: '+5000 555 1212',
    clientEmail: 'noone@nowhere.net',
  colorPalette: const ThemeExtensionColorPalette(
    primary1: Color(0xFF00A9C3),
    primary2: Color(0xFF73DEE4),
    primary3: Color(0xFFA7EFF3),
    primary4: Color(0xFFC9F1F3),
    secondary1: Color(0xFF872DD3),
    secondary2: Color(0xFFA669D8),
    secondary3: Color(0xFFC39CE2),
    secondary4: Color(0xFFD8C3E7),
    onPrimary1: Color(0xFFFFFFFF),
    onPrimary2: Color(0xFF333333),
    onPrimary3: Color(0xFF333333),
    onPrimary4: Color(0xFF333333),
    onSecondary1: Color(0xFFFFFFFF),
    onSecondary2: Color(0xFF333333),
    onSecondary3: Color(0xFF333333),
    onSecondary4: Color(0xFF333333),
    onDisabledPrimary1: Color(0xFFFFFFFF),
    onDisabledSecondary1: Color(0xFFFFFFFF),
    onSuccess: Color(0xFFFFFFFF),
    onWarning: Color(0xFFFFFFFF),
    onError: Color(0xFFFFFFFF),
  ),
  textStyles: CustomThemeExtension.defaultTextStyles,
);

