import 'package:another_flutter_responsive_example/app/core/size_config.dart';
import 'package:flutter/widgets.dart';

class SizeInheritedWidget extends InheritedWidget {
  final SizeConfig sizeConfig;

  const SizeInheritedWidget({super.key, required this.sizeConfig, required super.child});

  @override
  bool updateShouldNotify(covariant SizeInheritedWidget oldWidget) {
    return oldWidget.sizeConfig != sizeConfig;
  }

  static SizeInheritedWidget of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<SizeInheritedWidget>()!;
}
