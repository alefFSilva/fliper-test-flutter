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
                  border:
                      Border.all(color: const Color.fromRGBO(59, 92, 184, 1)),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              padding: EdgeInsets.all(10),
              child: Text(
                'VER MAIS',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: const Color.fromRGBO(59, 92, 184, 1),
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
