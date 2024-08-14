import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n/applocalization.dart';
import 'languageselectionscreen.dart';
import 'services/languageservice.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageService()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return MaterialApp(
          locale: languageService.locale,
          supportedLocales: [Locale('en'), Locale('es')],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: LanguageSelectionScreen(),
        );
      },
    );
  }
}
