import 'package:fliper_test/widgets/tools/noMaterialDividerWidget.dart';
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
    var summaryContent = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          TitleAndMenuButtonSectionWidget(),
          SizedBox(height: 10), //mUDAR PARA CONTAINER INTERNO COM MARGINS
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
