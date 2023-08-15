import 'package:design_patterns/flutter_factory_method.dart';
import 'package:design_patterns/platform_indicator_for_abstract_factory.dart';
import 'package:flutter/material.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImpl implements AbstractFactory {
  @override
  Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}