import 'package:flutter/material.dart';
import 'package:smooth_rotation/theme_extension/theme.dart';

/// A red [ActionButton] that takes a label.
@immutable
class WidgetUsingExtension extends StatefulWidget {
  /// Constructs a [WidgetUsingExtension]
  const WidgetUsingExtension({
    super.key,
    required this.onTap,
  });

  /// The callback to be executed when the button is pressed.
  final VoidCallback onTap;

  @override
  State<WidgetUsingExtension> createState() => _WidgetUsingExtensionState();
}

class _WidgetUsingExtensionState extends State<WidgetUsingExtension> {
  late Color backgroundColor;
  late Color textColor;

  late final CustomThemeExtension ourThemeExtension;

  late final List<Color> backgroundColors;
  late final List<Color> textColors;

  int colorsIndex = 0;
  int backgroundColorIndex = 0;
  int textColorIndex = 0;

  @override
  void initState() {
    super.initState();
    ourThemeExtension = CustomThemeExtension.of(context);
    backgroundColors = [
      ourThemeExtension.colorPalette.secondary1,
      ourThemeExtension.colorPalette.secondary2,
      ourThemeExtension.colorPalette.secondary3,
      ourThemeExtension.colorPalette.secondary4,
    ];
    textColors = [
      ourThemeExtension.colorPalette.primary1,
      ourThemeExtension.colorPalette.primary2,
      ourThemeExtension.colorPalette.primary3,
      ourThemeExtension.colorPalette.primary4,
    ];
  }

  void incrementColorsIndex() {
    colorsIndex = (colorsIndex += 1) % 8;
    if (colorsIndex % 2 == 0) {
      backgroundColorIndex = (backgroundColorIndex += 1) % 4;
    } else {
      textColorIndex = (textColorIndex += 1) % 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: incrementColorsIndex,
      behavior: HitTestBehavior.opaque,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: backgroundColors[backgroundColorIndex],
          shape: StadiumBorder(
            side: BorderSide(
              width: 1,
              color: ourThemeExtension.colorPalette.gray3,
            ),
          ),
        ),
        child: Text(
          ourThemeExtension.clientName,
          style: ourThemeExtension.textStyles.bodyMedium
              .copyWith(
            color: textColors[textColorIndex],
          ),
        ),
      ),
    );
  }
}
