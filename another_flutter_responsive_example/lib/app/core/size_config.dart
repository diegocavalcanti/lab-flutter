import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class SizeConfig extends Equatable {
  final BoxConstraints constraints;
  final Orientation orientation;

  late final double _screenWidth;
  late final double _screenHeight;
  late final double _blockWidth;
  late final double _blockHeight;

  late final double textMultiplier;
  late final double imageSizeMultiplier;
  late final double heightMultiplier;
  late final double widthMultiplier;
  late final bool isPortrait;
  late final bool isMobilePortrait;

  SizeConfig(this.constraints, this.orientation) {
    init();
  }

  void init() {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }

  @override
  List<Object?> get props => [constraints, orientation];
}
