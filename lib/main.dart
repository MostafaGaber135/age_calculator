import 'package:age_calculator/Widgets/home_page.dart';
import 'package:age_calculator/Widgets/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        SplashScreen.id: (context) => const SplashScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF8DD29E),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}){
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context){
  double width = MediaQuery.sizeOf(context).width;
  if(width < 600){
    return  width / 400;
  } else if (width < 900){
    return width / 700;
  } else {
    return width / 1000;
  }
}