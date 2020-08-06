import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

const API_URL = 'https://harura-fliper-test.herokuapp.com/v1/graphql/';
const API_SECRET = 'fliperdevtest2020';

ValueNotifier<GraphQLClient> graphQLClient = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link:
        HttpLink(uri: API_URL, headers: {'x-hasura-admin-secret': API_SECRET}),
  ),
);
