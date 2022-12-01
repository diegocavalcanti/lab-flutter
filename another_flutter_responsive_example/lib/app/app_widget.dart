import 'package:another_flutter_responsive_example/app/core/app_theme.dart';
import 'package:another_flutter_responsive_example/app/core/size_config.dart';
import 'package:another_flutter_responsive_example/app/core/size_inherited_widget.dart';
import 'package:another_flutter_responsive_example/app/modules/home/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        final sizeConfig = SizeConfig(constraints, orientation);
        return SizeInheritedWidget(
          sizeConfig: sizeConfig,
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: AppTheme(textMultiplier: sizeConfig.textMultiplier).lightTheme,
            home: const WelcomeScreen(),
          ),
        );
      });
    });
  }
}
