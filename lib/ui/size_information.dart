import 'package:flexsites_app/enumeration/device_screen_type.dart';
import 'package:flutter/material.dart';

class SizeInformation {
  static const width = 0.0;
  static const height = 0.0;

  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizeInformation({
    this.orientation = Orientation.portrait,
    this.deviceScreenType = DeviceScreenType.Mobile,
    this.screenSize = Size.zero,
    this.localWidgetSize = Size.zero
  });
}