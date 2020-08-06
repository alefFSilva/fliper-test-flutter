import 'package:fliper_test/widgets/userSummary/userSummaryWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'userSummary/constants/colors.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainContainer = Center(
        child: Scaffold(
            body: Container(
      color: backgroundColor,
      child: UserSummaryWidget(),
    )));
    return mainContainer;
  }
}
