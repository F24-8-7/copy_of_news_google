
import 'package:copy_of_news_google/core/imports/imports.dart';
class Categories {
  static List<Category> all(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return [
      Category(name: l10n.general, apiName: 'general'),
      Category(name: l10n.business, apiName: 'business'),
      Category(name: l10n.technology, apiName: 'technology'),
      Category(name: l10n.sports, apiName: 'sports'),
      Category(name: l10n.entertainment, apiName: 'entertainment'),
      Category(name: l10n.health, apiName: 'health'),
      Category(name: l10n.science, apiName: 'science'),
    ];
  }
}
