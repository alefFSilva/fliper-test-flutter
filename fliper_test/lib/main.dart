import 'package:fliper_test/widgets/containerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FliperTestApp());
}

class FliperTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContainerWidget());
  }
}
