import 'package:fliper_test/widgets/userSummary/constants/userSummary.labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleAndMenuButtonSectionWidget extends StatelessWidget {
  final content = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    textDirection: TextDirection.ltr,
    children: [
      Text(
        yourSummaryLabel,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(59, 92, 184, 1),
            fontSize: 25),
      ),
      GestureDetector(
        onTap: () {
          print("Oie");
        },
        child: Icon(
          Icons.more_vert,
          textDirection: TextDirection.ltr,
          color: Colors.grey,
          size: 30,
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return content;
  }
}
