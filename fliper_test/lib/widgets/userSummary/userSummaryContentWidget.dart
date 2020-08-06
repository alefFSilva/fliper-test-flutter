import 'package:fliper_test/widgets/tools/noMaterialDividerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'DTOs/userSummaryDTO.dart';
import 'sections/moreDetailsButtonSection.dart';
import 'sections/titleAndMenuButtonSectionWidget.dart';
import 'sections/investedValueSectioWidget.dart';
import 'sections/profitabilityCDIGainSectionWidget.dart';

class UserSummaryContentWidget extends StatelessWidget {
  UserSummaryContentWidget({this.userData});

  final UserSummaryDTO userData;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);

    var summaryContent = Container(
      height: mediaquery.size.height / 1.7,
      width: mediaquery.size.width / 1.1,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          TitleAndMenuButtonSectionWidget(),
          InvestedValueSectionWidget(investedValue: userData.total),
          ProfitabilityCDIGainSectionWidget(
            profitability: userData.profitability,
            cdi: userData.cdi,
            gain: userData.gain,
          ),
          NoMaterialDividerWidget(),
          MoreDetailsButtonSection()
        ],
      ),
    );
    return summaryContent;
  }
}
