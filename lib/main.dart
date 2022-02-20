import 'package:flutter/material.dart';
import 'package:klocalizations_flutter/klocalizations_flutter.dart';
import 'package:vp12_azkarapp_muradabed/screen/home_screen.dart';
import 'package:vp12_azkarapp_muradabed/screen/lunch_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
        supportedLocales: const[




          
          Locale('ar'),
          Locale('en'),
        ],
      locale:const Locale('fr'),
      initialRoute: '/lunch_screen',
      routes:{
        "/lunch_screen":(context)=>const LunchScreen(),
        "/home_screen":(context)=> const HomeScreen()
      },
    );
  }
}
