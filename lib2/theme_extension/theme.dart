import 'dart:ui';

import 'package:flutter/material.dart' show Theme, ThemeExtension, BuildContext, TextStyle;
import 'package:smooth_rotation/theme_extension/color_palette.dart';
import 'package:smooth_rotation/theme_extension/font_weights.dart';
import 'package:smooth_rotation/theme_extension/text_styles.dart';
// import 'package:google_fonts/google_fonts.dart';

export 'package:flutter/rendering.dart';
export 'package:smooth_rotation/theme_extension/color_palette.dart';
export 'package:smooth_rotation/theme_extension/font_weights.dart';
export 'package:smooth_rotation/theme_extension/theme_colors.dart';
export 'package:smooth_rotation/theme_extension/text_styles.dart';
export 'package:smooth_rotation/theme_extension/theme_text_style.dart';
export 'package:flutter/material.dart' show Icons, Theme, ThemeExtension, BuildContext, TextStyle;

/// A [ThemeExtension] class that will allow the use of custom parameters within a theme.
/// A different instance should be created for each client.
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  /// Creates an instance of [CustomThemeExtension].
  const CustomThemeExtension({
    required this.clientName,
    required this.clientSlogan,
    required this.clientStreetAddress,
    required this.clientCity,
    required this.clientCountryCode,
    required this.clientPhone,
    required this.clientEmail,
    required this.colorPalette,
    required this.textStyles,
  });

  /// The name of the client company.
  final String clientName;

  /// The slogan of the client company.
  final String clientSlogan;

  /// The street address of the client company.
  final String clientStreetAddress;

  /// The city of the client company.
  final String clientCity;

  /// The country code of the client company.
  final String clientCountryCode;

  /// The phone number of the client company.
  final String clientPhone;

  /// The email of the client company.
  final String clientEmail;

  /// The [Color] palette used across the app.
  final ThemeExtensionColorPalette colorPalette;

  /// The [TextStyle]s used across the app.
  final ThemeExtensionTextStyles textStyles;

  /// As other "of" functions, it allows access to this [CustomThemeExtension]
  /// from higher in the tree.
  static CustomThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<CustomThemeExtension>()!;
  }

  /// Lerp's transitions old values to new.
  @override
  ThemeExtension<CustomThemeExtension> lerp(ThemeExtension<CustomThemeExtension>? other, double t) {
    final otherTheme = other as CustomThemeExtension;
    return CustomThemeExtension(
      clientName: clientName,
      colorPalette: colorPalette.lerp(otherTheme.colorPalette, t),
      textStyles: textStyles.lerp(otherTheme.textStyles, t),
        clientSlogan: clientSlogan,
        clientStreetAddress: clientStreetAddress,
        clientCity: clientCity,
        clientCountryCode: clientCountryCode,
        clientPhone: clientPhone,
        clientEmail: clientEmail,
    );
  }

  /// Creates a copy of the [CustomThemeExtension] using new values passed in
  /// and reusing current values for any parameters not specified.
  @override
  CustomThemeExtension copyWith({
    String? clientName,
    ThemeExtensionColorPalette? colorPalette,
    ThemeExtensionTextStyles? textStyles,
    String? clientSlogan,
    String? clientStreetAddress,
    String? clientCity,
    String? clientCountryCode,
    String? clientPhone,
    String? clientEmail,
  }) {
    return CustomThemeExtension(
      clientName: clientName ?? this.clientName,
      colorPalette: colorPalette ?? this.colorPalette,
      textStyles: textStyles ?? this.textStyles,
        clientSlogan: clientSlogan ?? this.clientSlogan,
        clientStreetAddress: clientStreetAddress ?? this.clientStreetAddress,
        clientCity: clientCity ?? this.clientCity,
        clientCountryCode: clientCountryCode ?? this.clientCountryCode,
        clientPhone: clientPhone ?? this.clientPhone,
        clientEmail: clientEmail ?? this.clientEmail,
    );
  }

  /// Default [ThemeExtensionTextStyles]
  static final defaultTextStyles = ThemeExtensionTextStyles(
    displayLarge: _makeTextStyle(32.0),
    displayMedium: _makeTextStyle(28.0),
    displaySmall: _makeTextStyle(24.0),
    labelLarge: _makeTextStyle(16.0),
    labelMedium: _makeTextStyle(14.0),
    labelSmall: _makeTextStyle(12.0),
    titleLarge: _makeTextStyle(22.0),
    titleMedium: _makeTextStyle(20.0),
    titleSmall: _makeTextStyle(18.0),
    headlineLarge: _makeTextStyle(16.0),
    headlineMedium: _makeTextStyle(14.0),
    headlineSmall: _makeTextStyle(12.0),
    bodyLarge: _makeTextStyle(16.0, FontWeights.normal),
    bodyMedium: _makeTextStyle(14.0, FontWeights.normal),
    bodySmall: _makeTextStyle(12.0, FontWeights.normal),
  );

  static TextStyle _makeTextStyle(double size, [FontWeight weight = FontWeights.semiBold]) {
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      letterSpacing: -0.2,
    );
    //
    // return GoogleFonts.lato(
    //   textStyle: TextStyle(
    //     fontWeight: weight,
    //     fontSize: size,
    //     letterSpacing: -0.2,
    //   ),
    // );
  }
}
