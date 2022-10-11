import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_trans/l10n/locale_keys.g.dart';
import 'package:flutter_trans/second_route.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'cy_intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale("en", "GB"),
      Locale("ur", "UR"),
      Locale('cy'),
    ],
    path: "assets/translations",
    saveLocale: true,
    fallbackLocale: const Locale('en', 'GB'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          ...context.localizationDelegates,
          CyMaterialLocalizations.delegate
        ],
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Translations')),
      body: Column(children: [
        Text(LocaleKeys.about.tr()),
        context.locale == const Locale('cy')
            ? Text(DateFormat.yMMMMd('cy').format(DateTime.now()))
            : Text(DateFormat.yMMMMd('en_GB').format(DateTime.now())),
        ElevatedButton(
          onPressed: () {
            context.locale == const Locale('cy')
                ? EasyLocalization.of(context)
                    ?.setLocale(const Locale('en', 'GB'))
                : EasyLocalization.of(context)?.setLocale(const Locale('cy'));
          },
          child: Text(context.locale == const Locale('cy')
              ? 'Change to English'
              : 'Change to Welsh'),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
            child: const Text('NextPage'))
      ]),
    );
  }
}
