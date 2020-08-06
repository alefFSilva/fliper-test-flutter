import 'package:fliper_test/services/graphQLClient.service.dart';
import 'package:fliper_test/services/queries/userData.queries.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'DTOs/userSummaryDTO.dart';
import 'userSummaryContentWidget.dart';

class UserSummaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
        client: graphQLClient,
        child: Query(
          options: QueryOptions(
              documentNode: gql(userSummaryQuery), pollInterval: 10),
          builder: (result, {fetchMore, refetch}) {
            return Center(
                child: result.hasException
                    ? Text(result.exception.toString())
                    : result.loading
                        ? CircularProgressIndicator()
                        : UserSummaryContentWidget(
                            userData: UserSummaryDTO.parseData(result.data)));
          },
        ));
  }
}
