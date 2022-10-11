import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'l10n/locale_keys.g.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second Page')),
        body: Container(
          child: Column(children: [
            Text(LocaleKeys.about.tr()),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('ur', 'UR'));
              },
              child: const Text('Change'),
            )
          ]),
        ));
  }
}
