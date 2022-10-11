# Adding a Language to flutter

We sometimes need to internationalise and localize our apps to meet a certain audience of people. But infortunately, flutter doesnot support all the locales available.

This is a sample app to show how one can add cy_GB or just cy locale to an a flutter app. cy(Welsh) is one of the locales not supported by flutter.

I'lll assume you're familiar with using easy_localisation package. I chose easy_localization because it supports a wider range than flutter_localizations and also it does most of the work for you, like I don't have to go through the trouble of saving a locale in shred prefernces for when the app is restarted to remember the last selected language of the user before the app was killed, also i don't have labour with state management when the user selects a new language for it to surface throught the entire app.

Also, for this, I followed this flutter [example](https://github.com/flutter/website/blob/main/examples/internationalization/add_language/lib/nn_intl.dart) as explained in the [flutter docs](https://docs.flutter.dev/development/accessibility-and-localization/internationalization#setting-up) . So we shall just be replacing whatever is there to fit our needs.

1. Create a delegate class cy_intl.dart for the locale.

2. Replace the date patterns to fit your desired locale. These sights help me get the date patterns for cy.

   2.1 https://www.localeplanet.com/icu/cy-GB/index.html
   
   2.2 https://unicode-org.github.io/cldr-staging/charts/37/verify/dates/cy.html
   
   2.3 https://manpages.ubuntu.com/manpages/impish/man3/DateTime::Locale::cy.3pm.html

3. Add the delegate to your localization delegates in Material app

## Getting started

The app requires Flutter SDK and android SDK to run on your machine. Checkout the [docs](https://docs.flutter.dev/) to see installation guidelines for flutter and [docs](https://developer.android.com/studio/intro) to see how to install android SDK.

#### Installation guidelines

- Clone the repository
- On your command line, switch to the app root directory
- Install dependencies using Install dependencies using `flutter pub get`
