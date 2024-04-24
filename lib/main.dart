import 'package:flutter/material.dart';
import 'package:news_api/common/app_module.dart';
import 'package:news_api/presentation/common/theme/app_theme.dart';
import 'package:news_api/presentation/news_list/ui/news_list_screen.dart';

void main() {
  setupDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: const AppTheme().themeData,
      home: const NewsListScreen(),
    );
  }
}
