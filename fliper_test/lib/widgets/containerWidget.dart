import 'package:fliper_test/service/graphQLClient.service.dart';
import 'package:fliper_test/widgets/userSummary/userSummaryWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainContainer = Center(
        child: Scaffold(
      body: Container(
          color: const Color.fromRGBO(232, 235, 246, 1),
          child: UserSummaryWidget(),
    ));
    return mainContainer;
  }
}
