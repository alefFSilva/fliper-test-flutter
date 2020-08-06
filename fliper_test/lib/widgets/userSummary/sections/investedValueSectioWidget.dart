import 'package:fliper_test/widgets/tools/noMaterialDividerWidget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InvestedValueSectionWidget extends StatelessWidget {
  InvestedValueSectionWidget({this.investedValue});

  final int investedValue;

  @override
  Widget build(BuildContext context) {
    var investedValueMask = new MoneyMaskedTextController();
    investedValueMask.updateValue(investedValue.toDouble());

    final sectionContent = Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Valor investido',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: const Color.fromRGBO(96, 99, 119, 1),
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'R\$ ${investedValueMask.text}',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: const Color.fromRGBO(59, 92, 184, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));

    return sectionContent;
  }
}
