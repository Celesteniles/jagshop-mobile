import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class JAGShopAuthUser {
  JAGShopAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<JAGShopAuthUser> jAGShopAuthUserSubject =
    BehaviorSubject.seeded(JAGShopAuthUser(loggedIn: false));
Stream<JAGShopAuthUser> jAGShopAuthUserStream() => jAGShopAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
