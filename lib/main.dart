import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:imc/ui/cupertino-app.dart';
import 'package:imc/ui/material-app.dart';

void main() => Platform.isIOS
    ? runApp(const MyCupertinoApp())
    : runApp(const MyMaterialApp());
