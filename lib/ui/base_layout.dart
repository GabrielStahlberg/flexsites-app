import 'package:flexsites_app/ui/base_widget.dart';
import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizeInformation) {
        return Material(
          child: SingleChildScrollView(
            child: SafeArea(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: sizeInformation.screenSize.height,
                      minWidth: sizeInformation.screenSize.width
                  ),
                  child: child
              ),
            ),
          ),
        );
      },
    );
  }
}
