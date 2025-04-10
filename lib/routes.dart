import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:anjuke/pages/home/index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String home = "/";
  static String login = "/login";

  final _homeHandle = Handler(
    handlerFunc: (BuildContext context) {
      return HomePage();
    },
  );
}
