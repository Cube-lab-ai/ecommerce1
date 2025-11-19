import 'package:ecom/app.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  TDeviceUtils.setStatusBarColor(Colors.black12);
  runApp(const App());
  WidgetsBinding.instance.addPostFrameCallback((_) {
    TDeviceUtils.setStatusBarColor(Colors.black12);
  });
}
