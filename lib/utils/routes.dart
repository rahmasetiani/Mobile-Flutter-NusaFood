import 'package:flutter/material.dart';
import 'package:flutter_app/pages/log_in.dart';
import 'package:flutter_app/pages/menu.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/utama.dart';

MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route? generateRoute(RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;

  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: LoginScreen(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegisterScreen(), settings: settings);
      break;
    case rstarted:
      _route = _pageRoute(body: Utama(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: Menu(), settings: settings);
      break;
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rLogin = '/login';
const String rRegister = '/register';
const String rstarted = '/started';
const String rHome = '/home';
