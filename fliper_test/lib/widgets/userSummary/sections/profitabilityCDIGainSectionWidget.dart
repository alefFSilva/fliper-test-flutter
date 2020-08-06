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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text(
                    'Rentabilidade/mês',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: const Color.fromRGBO(96, 99, 119, 1),
                        fontSize: 18),
                  ),
                  Text('$profitabilityFormatted %',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: const Color.fromRGBO(59, 92, 184, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text(
                    'CDI',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: const Color.fromRGBO(96, 99, 119, 1),
                        fontSize: 18),
                  ),
                  Text('$cdiFormatted%',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: const Color.fromRGBO(59, 92, 184, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text(
                    'Ganho/mês',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: const Color.fromRGBO(96, 99, 119, 1),
                        fontSize: 18),
                  ),
                  Text('R\$ ${gainMaskController.text}',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: const Color.fromRGBO(59, 92, 184, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              )
            ]));

    return sectionContent;
  }
}
