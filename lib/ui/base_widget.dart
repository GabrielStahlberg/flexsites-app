import 'package:flexsites_app/ui/size_information.dart';
import 'package:flexsites_app/ui/utils/ui_utils.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizeInformation sizingInformation) builder;

  const BaseWidget({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizeInformation = SizeInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );

      return builder(context, sizeInformation);
    });
  }
}
