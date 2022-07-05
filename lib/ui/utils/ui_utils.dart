import 'package:flexsites_app/enumeration/device_screen_type.dart';
import 'package:flutter/material.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = orientation == Orientation.landscape
      ? mediaQuery.size.height
      : mediaQuery.size.width;

  if(deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  if(deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}