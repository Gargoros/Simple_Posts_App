import 'package:flutter/material.dart';
import 'package:messages_app/core/constants/constants.dart';

import 'config/themes/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: messegesTitleName,
      theme: AppTheme.light(),
    );
  }
}
