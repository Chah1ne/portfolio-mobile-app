import 'package:cv/screen/tab_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNormalTheme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV',
      theme: isNormalTheme
          ? ThemeData(
          primarySwatch: Colors.indigo,
          backgroundColor: Colors.white,
          canvasColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.indigo),
            bodyText2: TextStyle(color: Colors.grey.shade700),
          ))
          : ThemeData(
        primarySwatch: MaterialColor(0xFF1E1E1E, <int, Color>{
          50: Color(0xFF1E1E1E),
          100: Color(0xFFE6C1F1),
          200: Color(0xFFD89BE5),
          300: Color(0xFFCA76D8),
          400: Color(0xFFBD51CC),
          500: Color(0xFFAF2BC0),
          600: Color(0xFF9916A7),
          700: Color(0xFF740E81),
          800: Color(0xFF58095C),
          900: Color(0xFF074AA1),
        }),
        backgroundColor: Color(0xFF121212),
        canvasColor: Color(0xFF121212),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFFE1E1E1)),
          bodyText2: TextStyle(color: Color(0xFF9C9C9C)),
          caption: TextStyle(color: Color(0xFF1E1E1E)),
        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
        Locale('ar', 'AR'),
      ],
      home: TabBarScreen(switchTheme),
    );
  }

  void switchTheme() {
    setState(() {
      isNormalTheme = !isNormalTheme;
    });
  }
}

