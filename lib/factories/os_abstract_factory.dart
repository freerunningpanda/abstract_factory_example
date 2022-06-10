import 'package:flutter/material.dart';

import '../pages/os_page.dart';

abstract class OSAbstractFactory extends StatelessWidget {
  const OSAbstractFactory({Key? key}) : super(key: key);

  OSPage create();
}
