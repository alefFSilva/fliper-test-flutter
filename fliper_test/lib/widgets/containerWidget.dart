import 'package:fliper_test/widgets/userSummary/userSummaryWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final mainContainer = Container(
    color: const Color.fromRGBO(232, 235, 246, 1),
    padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: const Color.fromRGBO(154, 163, 188, 1),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(2, 2))
          ]),
      child: UserSummaryWidget(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return mainContainer;
  }
}
