import 'package:flutter/material.dart';

import '../model/menu_item.dart';

class MenuItems {
  static const List<MenuItem> items = [android, ios];

  static const MenuItem android = MenuItem('Android', Icons.android);
  static const MenuItem ios = MenuItem('IOS', Icons.ios_share);
}
