import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/app_widget.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: MainApp()));
}
