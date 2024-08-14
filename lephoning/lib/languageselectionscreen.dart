import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/applocalization.dart';
import '../services/languageservice.dart';

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('selectLanguage')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Provider.of<LanguageService>(context, listen: false)
                    .changeLanguage('en');
              },
              child: Text(AppLocalizations.of(context)!.translate('english')),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<LanguageService>(context, listen: false)
                    .changeLanguage('es');
              },
              child: Text(AppLocalizations.of(context)!.translate('spanish')),
            ),
          ],
        ),
      ),
    );
  }
}
