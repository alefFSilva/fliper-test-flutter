import 'package:fliper_test/widgets/userSummary/constants/colors.dart';
import 'package:fliper_test/widgets/userSummary/constants/userSummary.labels.dart';
import 'package:flutter/widgets.dart';

class MoreDetailsButtonSection extends StatelessWidget {
  final sectionContent = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    textDirection: TextDirection.ltr,
    children: <Widget>[
      GestureDetector(
          onTap: () {
            print("Hellow boy");
          },
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: blueColor),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Text(
                lookMoreLabel.toUpperCase(),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )))
    ],
  );

  @override
  Widget build(BuildContext context) {
    return sectionContent;
  }
}
