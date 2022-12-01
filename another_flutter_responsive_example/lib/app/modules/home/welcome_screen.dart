import 'package:flutter/material.dart';

import '../../core/size_inherited_widget.dart';
import '../../core/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: const <Widget>[
            Expanded(
              child: Align(alignment: Alignment.center, child: WelcomeContentWidget()),
            ),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class WelcomeContentWidget extends StatelessWidget {
  const WelcomeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeInheritedWidget.of(context).sizeConfig;
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 1 * sizeConfig.heightMultiplier),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    child: Text(
                      Strings.welcomeScreenTitle,
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1 * sizeConfig.heightMultiplier),
              child: FlutterLogo(size: 49.38 * sizeConfig.imageSizeMultiplier),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2 * sizeConfig.heightMultiplier),
                  child: Text(
                    Strings.welcomeScreenSubTitle,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeInheritedWidget.of(context).sizeConfig;
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          constraints: BoxConstraints(minHeight: 6.5 * sizeConfig.heightMultiplier, maxHeight: 7.9 * sizeConfig.heightMultiplier),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(4 * sizeConfig.heightMultiplier),
            ),
            color: Theme.of(context).navigationBarTheme.backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.chevron_left,
                  size: 6 * sizeConfig.imageSizeMultiplier,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  Strings.getStartedButton,
                  style: Theme.of(context).textTheme.button,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.chevron_right,
                  size: 6 * sizeConfig.imageSizeMultiplier,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
