library internet_check;

import 'dart:io';

import 'package:flutter/cupertino.dart';

/// A CheckInternet class.
class Internet {
  static final Internet _singleton = Internet._internal();

  factory Internet() {
    return _singleton;
  }

  Internet._internal();

  Future<bool> check({bool isPrintStatus = false}) async {
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        if(isPrintStatus) {
          debugPrint("Internet Checked.Status -------- True");
        }
        isOnline = true;
      } else {
        if(isPrintStatus) {
          debugPrint("Internet Checked.Status -------- False");
        }
        isOnline = false;
      }
    } on SocketException catch (_) {
      if(isPrintStatus) {
        debugPrint("Internet Checked.Status -------- False");
      }
      isOnline = false;
    }

    return isOnline;
  }
}
