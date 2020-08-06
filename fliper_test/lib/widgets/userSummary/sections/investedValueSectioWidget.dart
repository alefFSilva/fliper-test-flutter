import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InvestedValueSectionWidget extends StatelessWidget {
  InvestedValueSectionWidget({this.investedValue});

  final int investedValue;

  @override
  Widget build(BuildContext context) {
    var controller = new MoneyMaskedTextController();
    controller.updateValue(investedValue.toDouble());

    final sectionContent = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              'Valor investido',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: const Color.fromRGBO(96, 99, 119, 1), fontSize: 20),
            ),
            Text(
              'R\$ ${controller.text}',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: const Color.fromRGBO(59, 92, 184, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );

    return sectionContent;
  }
}
