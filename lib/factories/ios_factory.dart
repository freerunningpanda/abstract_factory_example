import 'package:flutter/material.dart';

import 'os_abstract_factory.dart';
import '../pages/ios_page.dart';
import '../pages/os_page.dart';

class IOSFactory extends OSAbstractFactory {
  const IOSFactory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('iOS Page'),
      ),
      body: Opacity(
        opacity: 0.6,
        child: Center(
          child: icons(),
        ),
      ),
    );
  }

  @override
  OSPage create() {
    return const IOSPage();
  }

  Widget icons() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        Image.asset(
          'assets/ios.png',
          height: 100,
        ),
        Image.asset(
          'assets/ios_1.png',
          height: 100,
        ),
        Image.asset(
          'assets/ios_2.png',
          height: 100,
        ),
        Image.asset(
          'assets/ios_3.png',
          height: 100,
        ),
        Image.asset(
          'assets/ios_4.png',
          height: 100,
        ),
        Image.asset(
          'assets/ios_5.png',
          height: 100,
        ),
      ],
    );
  }
}
