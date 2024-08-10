import 'package:app_movil_giuseppe/router/routes.dart';
import 'package:app_movil_giuseppe/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giuseppe',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.generalTheme,
      routes: routes,
      initialRoute: 'login_page',
    );
  }

}
