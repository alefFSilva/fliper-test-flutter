import 'package:flutter/cupertino.dart';

class NoMaterialDividerWidget extends StatelessWidget {
  final widgetContent = Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child:
          Container(height: 2, color: const Color.fromRGBO(154, 163, 188, 1)));

  @override
  Widget build(BuildContext context) {
    return widgetContent;
  }
}
