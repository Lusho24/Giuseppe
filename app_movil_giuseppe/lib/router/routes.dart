import 'package:app_movil_giuseppe/features/presentation/login/view/login_page.dart';
import 'package:app_movil_giuseppe/features/presentation/tabs/view/tabs_page.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'login_page' : (BuildContext context) => const LoginPage(),
  'tabs_page' : (BuildContext context) => const TabsPage()
};