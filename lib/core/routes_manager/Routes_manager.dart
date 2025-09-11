
import 'package:flutter/cupertino.dart';

import '../../features/NextPage.dart';
import '../../features/home/home_screen.dart';

class RoutesManager{
  static const String home = "/home";
  static const String next = "/nextPage";

  static Map<String, WidgetBuilder> routes = {
    home: (_) =>  HomeScreen(),
    next: (_) =>  Nextpage(),
  };
}

