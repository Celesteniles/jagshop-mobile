// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

Future connected() async {
  // Add your function code here!
  StreamSubscription<List<ConnectivityResult>>? subscription;
  subscription = Connectivity()
      .onConnectivityChanged
      .listen((List<ConnectivityResult> result) async {
    // Got a new connectivity status!

    bool hasConnection = await checkConnection();

    //print("Connection: ${hasConnection}");

    FFAppState().update(() {
      FFAppState().connected = hasConnection;
    });
    FFAppState().notifyListeners();
  });
}

//The test to actually see if there is a connection to the internet.
Future<bool> checkConnection() async {
  bool hasConnection = false;

  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      hasConnection = true;
    } else {
      hasConnection = false;
    }
  } on SocketException catch (_) {
    hasConnection = false;
  }

  return hasConnection;
}
