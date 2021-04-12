import 'package:graphql_flutter/graphql_flutter.dart';

import '../datasources/local.dart';

class GraphQLConfiguration {
  final _httpLink = HttpLink(
    url,
    defaultHeaders: const {
      'X-Parse-Application-Id': parseApplicationId,
      'X-Parse-Master-Key': parseMasterKey,
      'X-Parse-Client-Key': parseClientKey,
    },
  );

  GraphQLClient myGQLClient() {
    // **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
    return GraphQLClient(
      cache: GraphQLCache(),
      link: _httpLink,
    );

    // **NOTE**  initialize Hive and wrap the default box in a HiveStore
    // final store = await HiveStore.open(path: 'my/cache/path');
    // return GraphQLClient(
    // **NOTE** pass the store to the cache for persistence
    //     cache: GraphQLCache(store: store),
    //     link: _link,
    // );
  }
}
