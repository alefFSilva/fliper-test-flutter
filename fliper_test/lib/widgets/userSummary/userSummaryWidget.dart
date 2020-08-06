import 'package:fliper_test/service/queries/userData.queries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'DTOs/userSummaryDTO.dart';
import 'userSummaryContentWidget.dart';

class UserSummaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
      options:
          QueryOptions(documentNode: gql(userSummaryQuery), pollInterval: 10),
      builder: (result, {fetchMore, refetch}) {
        return Center(
            child: result.hasException
                ? Text(result.exception.toString())
                : result.loading
                    ? CircularProgressIndicator()
                    : UserSummaryContentWidget(
                        userData: UserSummaryDTO.parseData(result.data)));
      },
    );
  }
}
