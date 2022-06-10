import 'package:flutter/material.dart';

import 'os_abstract_factory.dart';
import '../pages/os_page.dart';
import '../pages/android_page.dart';

class AndroidFactory extends OSAbstractFactory {
  const AndroidFactory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text('Android Page'),
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
    return const AndroidPage();
  }

  Widget icons() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        Image.asset(
          'assets/android.png',
          height: 100,
        ),
        Image.asset(
          'assets/android_1.png',
          height: 100,
        ),
        Image.asset(
          'assets/android_2.png',
          height: 100,
        ),
        Image.asset(
          'assets/android_3.png',
          height: 100,
        ),
        Image.asset(
          'assets/android_4.png',
          height: 100,
        ),
        Image.asset(
          'assets/android_5.png',
          height: 100,
        ),
      ],
    );
  }
}
