import 'dart:ui';

import 'package:flutter_portfolio/gen/assets.gen.dart';

enum Languages {
  en,
  vi;
}

extension LanguagesExtension on Languages {
  String get name {
    switch (this) {
      case Languages.en:
        return 'English';
      case Languages.vi:
        return 'Tiếng Việt';
    }
  }

  Locale get locate {
    switch (this) {
      case Languages.en:
        return const Locale('en');
      case Languages.vi:
        return const Locale('vi');
    }
  }

  String get languageCode {
    switch (this) {
      case Languages.en:
        return 'en';
      case Languages.vi:
        return 'vi';
    }
  }

  AssetGenImage get imageAssets {
    switch (this) {
      case Languages.en:
        return Assets.images.imgEnLogo;
      case Languages.vi:
        return Assets.images.imgEnLogo;
    }
  }
}
