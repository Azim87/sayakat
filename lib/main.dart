import 'package:flutter/material.dart';

import 'sayakatoo/application/application.dart';
import 'sayakatoo/config/di/app_module.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}
