import 'package:fliper_test/widgets/containerWidget.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'service/graphQLClient.service.dart';

void main() {
  runApp(FliperTestApp());
}

class FliperTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      child: ContainerWidget(),
      client: graphQLClient,
    );
  }
}
