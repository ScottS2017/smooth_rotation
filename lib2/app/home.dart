import 'package:flutter/material.dart';
import 'package:smooth_rotation/how_to_use_the_extension/widget_using_extension.dart';

class Home extends StatelessWidget {

  /// Constructs an instance of [Home].
  const Home({
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: WidgetUsingExtension(onTap: onTap),
      ),
    );
  }
}