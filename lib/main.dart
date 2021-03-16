import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';



void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translation', // <-- change the path of the translation files 
     // fallbackLocale: Locale('ar'),
      child: MyApp()
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Shop'.tr(),
        theme: ThemeData(
          backgroundColor: Colors.black87,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
         onGenerateRoute: RouterG.generateRoute,
         initialRoute: '/',

        home: HomeScreen(),
      ),
    );
  }
}
