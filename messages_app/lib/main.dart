import 'package:flutter/material.dart';
import 'package:messages_app/injection.dart';
import 'package:messages_app/messages_app.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(MessegesApp());
}
