import 'package:fliper_test/widgets/userSummary/constants/colors.dart';
import 'package:fliper_test/widgets/userSummary/constants/userSummary.labels.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ProfitabilityCDIGainSectionWidget extends StatelessWidget {
  ProfitabilityCDIGainSectionWidget({this.profitability, this.cdi, this.gain});

  final double profitability;
  final double cdi;
  final double gain;

  @override
  Widget build(BuildContext context) {
    var gainMaskController = new MoneyMaskedTextController();
    gainMaskController.updateValue(gain.toDouble());

    String cdiFormatted = cdi.toStringAsFixed(4).substring(0, 4);
    cdiFormatted = cdiFormatted.replaceFirst('.', ',');

    String profitabilityFormatted =
        profitability.toStringAsFixed(4).substring(0, 5);
    profitabilityFormatted = profitabilityFormatted.replaceFirst('.', ',');

    final sectionContent = Container(
        padding: EdgeInsets.all(10),
        height: 100,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _getLabelAndValueRow(
                  profitabilityPerMonthlabel, '$profitabilityFormatted %'),
              _getLabelAndValueRow(cdilabel, '$cdiFormatted%'),
              _getLabelAndValueRow(
                  gainPerMonthLabel, 'R\$ ${gainMaskController.text}'),
            ]));

    return sectionContent;
  }

  Widget _getLabelAndValueRow(String labelText, String valueText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Text(
          labelText,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: grayColor, fontSize: 18),
        ),
        Text(valueText,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: blueColor, fontSize: 18, fontWeight: FontWeight.bold))
      ],
    );
  }
}
