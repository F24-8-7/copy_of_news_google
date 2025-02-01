
import 'package:copy_of_news_google/core/imports/imports.dart';
// Events
abstract class LocaleEvent {}

class LoadLocale extends LocaleEvent {}

class ChangeLocale extends LocaleEvent {
  final Locale locale;
  ChangeLocale(this.locale);
}

// states
class LocaleState {
  final Locale locale;
  LocaleState(this.locale);
}

// bloc
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final SharedPreferences prefs;

  LocaleBloc(this.prefs) : super(LocaleState(Locale('en'))) {
    on<LoadLocale>((event, emit) {
      final savedLocale = prefs.getString('locale') ?? 'en';
      emit(LocaleState(Locale(savedLocale)));
    });

    on<ChangeLocale>((event, emit) {
      if (!['en', 'ar'].contains(event.locale.languageCode)) return;
      prefs.setString('locale', event.locale.languageCode);
      emit(LocaleState(event.locale));
    });
  }
}
