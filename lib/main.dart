import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/providers/settings_provider.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'Hadeth_details/Hadeth_details_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SettingProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      title: 'Islamy App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: Locale(provider.language),
      theme: AppTheme.LidhTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: provider.theme,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (_) => HomeScreen(),
        QuranDetailsScreen.route: (_) => QuranDetailsScreen(),
        HadethDetailsScreen.route: (_) => HadethDetailsScreen()
      },
    );
  }
}
