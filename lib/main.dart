import 'package:chatapp/domain/constrains/apptheme.dart';
import 'package:chatapp/domain/constrains/cubits/themecubit.dart';
import 'package:chatapp/domain/constrains/cubits/themestates.dart';
import 'package:chatapp/repository/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
      builder: (context,state){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates ? AppThemes.lightTheme : AppThemes.darkTheme,
          home: OnBoardingScreen(),
        );
      }
    );
  }
}


