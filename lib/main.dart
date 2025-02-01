
import 'package:copy_of_news_google/core/imports/imports.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// lock orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  /// shared preferences to save bookmarks
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}
