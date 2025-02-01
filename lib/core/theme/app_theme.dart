// import '../imports/imports.dart';
//
// class AppTheme {
//   static const Color primaryColor = Color(0xFFF2684D);
//   static const Color secondaryColor = Color(0xFF000505);
//   static const Color thirdColor = Color(0xFF393939);
//   static const Color contentColor = Colors.white;
//   static const Color successColor = Colors.green;
//   static const Color errorColor = Colors.red;
//   /// Light Theme
//   static ThemeData get lightTheme {
//     return ThemeData(
//       bottomSheetTheme:  BottomSheetThemeData(
//         backgroundColor:contentColor,
//         modalBackgroundColor: contentColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//         ),
//         elevation: 0,
//       ),
//       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//         backgroundColor: contentColor,
//         selectedItemColor: primaryColor,
//         unselectedItemColor: thirdColor,
//         elevation: 0,
//         type: BottomNavigationBarType.fixed,
//       ),
//       // dialogBackgroundColor:  Colors.white,
//       dialogTheme: _dialoglightTheme(contentColor, secondaryColor),
//       useMaterial3: true,
//       colorScheme: _lightColorScheme,
//       appBarTheme: _lightAppBarTheme,
//       scaffoldBackgroundColor: contentColor,
//       cardColor: contentColor,
//       inputDecorationTheme: _inputDecorationTheme(secondaryColor, contentColor),
//       elevatedButtonTheme: _lightElevatedButtonTheme(),
//       floatingActionButtonTheme: _floatingActionButtonTheme(
//           contentColor, const Color.fromARGB(0, 28, 57, 65)),
//       textTheme: _getTextTheme(),
//       splashFactory: InkRipple.splashFactory,
//       splashColor: primaryColor.withOpacity(0.08),
//       textSelectionTheme: TextSelectionThemeData(
//         selectionHandleColor: primaryColor.withOpacity(1.0),
//         selectionColor: primaryColor.withOpacity(0.6),
//         cursorColor: primaryColor.withOpacity(1.0),
//       ),
//       snackBarTheme: SnackBarThemeData(
//         backgroundColor: successColor,
//         contentTextStyle: const TextStyle(color: contentColor),
//         behavior: SnackBarBehavior.floating,
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
//
//   /// Dark Theme
//   static ThemeData get darkTheme {
//     return ThemeData(
//       bottomSheetTheme: const BottomSheetThemeData(
//         backgroundColor: thirdColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//         ),
//         elevation: 5,
//       ),
//       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//         backgroundColor: secondaryColor,
//         selectedItemColor: primaryColor,
//         unselectedItemColor: contentColor,
//         elevation: 10,
//         type: BottomNavigationBarType.fixed,
//       ),
//       dialogBackgroundColor: const Color(0xFF393939),
//       dialogTheme: _dialogDarkTheme(secondaryColor, contentColor),
//       snackBarTheme: SnackBarThemeData(
//         backgroundColor: successColor,
//         contentTextStyle: const TextStyle(color: contentColor),
//         behavior: SnackBarBehavior.floating,
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//       useMaterial3: true,
//       colorScheme: _darkColorScheme,
//       appBarTheme: _darkAppBarTheme,
//       scaffoldBackgroundColor: secondaryColor,
//       cardColor: const Color(0xFF393939),
//       inputDecorationTheme: _inputDecorationTheme(contentColor, thirdColor),
//       elevatedButtonTheme: _darkElevatedButtonTheme(),
//       floatingActionButtonTheme:
//           _floatingActionButtonTheme(const Color(0xFF393939), contentColor),
//       textTheme: _getTextTheme(),
//       splashFactory: InkRipple.splashFactory,
//       splashColor: primaryColor.withOpacity(0.08),
//       textSelectionTheme: TextSelectionThemeData(
//         selectionHandleColor: primaryColor.withOpacity(1.0),
//         selectionColor: primaryColor.withOpacity(0.6),
//         cursorColor: primaryColor.withOpacity(1.0),
//       ),
//     );
//   }
//
//   /// Dialog Dark Theme
//   static DialogTheme _dialogDarkTheme(
//       Color backgroundColor, Color contentColor) {
//     return DialogTheme(
//       backgroundColor: AppTheme.thirdColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       titleTextStyle: TextStyle(
//         color: contentColor,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//       contentTextStyle: TextStyle(
//         color: contentColor,
//         fontSize: 16,
//       ),
//     );
//   }
//
//   /// Dialog light Theme
//   static DialogTheme _dialoglightTheme(
//       Color backgroundColor, Color contentColor) {
//     return DialogTheme(
//       backgroundColor: AppTheme.contentColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       titleTextStyle: TextStyle(
//         color: contentColor,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//       contentTextStyle: TextStyle(
//         color: contentColor,
//         fontSize: 16,
//       ),
//     );
//   }
//
//   /// Light Color Scheme
//   static const ColorScheme _lightColorScheme = ColorScheme(
//     primary: secondaryColor,
//     secondary: secondaryColor,
//     surface: contentColor,
//     error: Color.fromARGB(255, 242, 104, 77),
//     onPrimary: contentColor,
//     onSecondary: contentColor,
//     onSurface: secondaryColor,
//     onError: contentColor,
//     brightness: Brightness.light,
//   );
//
//   /// Dark Color Scheme
//   static const ColorScheme _darkColorScheme = ColorScheme(
//     primary: contentColor,
//     secondary: contentColor,
//     surface: secondaryColor,
//     error: Color.fromARGB(255, 242, 104, 77),
//     onPrimary: secondaryColor,
//     onSecondary: secondaryColor,
//     onSurface: contentColor,
//     onError: secondaryColor,
//     brightness: Brightness.dark,
//   );
//
//   /// AppBar Theme for Light Mode
//   static const AppBarTheme _lightAppBarTheme = AppBarTheme(
//     centerTitle: true,
//     elevation: 0,
//     backgroundColor: contentColor,
//     iconTheme: IconThemeData(color: secondaryColor),
//   );
//
//   /// AppBar Theme for Dark Mode
//   static const AppBarTheme _darkAppBarTheme = AppBarTheme(
//     centerTitle: true,
//     elevation: 0,
//     backgroundColor: secondaryColor,
//     iconTheme: IconThemeData(color: contentColor),
//   );
//
//
//   /// Input Decoration Theme
//   static InputDecorationTheme _inputDecorationTheme(
//       Color borderColor, Color backgroundColor) {
//     return InputDecorationTheme(
//       fillColor: backgroundColor,
//       filled: true,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide(color: borderColor),
//       ),
//       contentPadding: const EdgeInsets.symmetric(
//         horizontal: 16,
//         vertical: 12,
//       ),
//       hintStyle: TextStyle(
//         color: borderColor.withOpacity(0.7),
//       ),
//       labelStyle: TextStyle(
//         color: borderColor,
//       ),
//     );
//   }
//
//   /// Elevated Button Theme for both Light and Dark modes
//   static ElevatedButtonThemeData _lightElevatedButtonTheme() {
//     return ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         foregroundColor: secondaryColor, // النص سيكون أبيض في الوضع الفاتح
//         backgroundColor: contentColor, // لون الزر في الوضع الفاتح
//         padding: const EdgeInsets.symmetric(
//           horizontal: 24,
//           vertical: 12,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         elevation: 0, // الظل في الوضع الفاتح
//         textStyle: const TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none, // إخفاء اللون تحت النص
//         ),
//       ),
//     );
//   }
//
//   static ElevatedButtonThemeData _darkElevatedButtonTheme() {
//     return ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         foregroundColor: contentColor, // النص سيكون أسود في الوضع الداكن
//         backgroundColor: thirdColor, // لون الزر في الوضع الداكن
//         padding: const EdgeInsets.symmetric(
//           horizontal: 24,
//           vertical: 12,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         elevation: 0, // الظل في الوضع الداكن
//         textStyle: const TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           decoration: TextDecoration.none, // إخفاء اللون تحت النص
//         ),
//       ),
//     );
//   }
//
//   /// Floating Action Button Theme
//   static FloatingActionButtonThemeData _floatingActionButtonTheme(
//       Color backgroundColor, Color foregroundColor) {
//     return FloatingActionButtonThemeData(
//       backgroundColor: backgroundColor,
//       foregroundColor: foregroundColor,
//     );
//   }
//
//   /// Text Theme
//   static TextTheme _getTextTheme() {
//     const fontFamily = 'Roboto-Regular';
//
//     return const TextTheme(
//       displayLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//       displayMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 28,
//         fontWeight: FontWeight.bold,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//       displaySmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//       bodyLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 18,
//         fontWeight: FontWeight.normal,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//       bodyMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 16,
//         fontWeight: FontWeight.normal,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//       bodySmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 14,
//         fontWeight: FontWeight.normal,
//         height: 1.5,
//         textBaseline: TextBaseline.alphabetic,
//       ),
//     );
//   }
// }
