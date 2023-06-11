import 'package:siglas_paises_app/view/paises_sreen.dart';
import 'package:flutter/material.dart';
//import 'package:toast/toast.dart';
//import '../color_schemes.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siglas dos Países',
      //theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      //darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
        ),
        drawerTheme: const DrawerThemeData(
            //backgroundColor: Colors.deepOrange
            ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orangeAccent,
          primaryContainer: Colors.orangeAccent,
          secondaryContainer: Colors.white,
          //tertiary: Colors.black,
        ),
        primaryColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.orangeAccent),
          bodyMedium: TextStyle(color: Colors.white),
          //bodySmall: TextStyle(color: Colors.orangeAccent),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
                Colors.black), // Definindo a cor do texto
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                  color: Colors.orangeAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        useMaterial3: true,
      ),

      home: const PaisesScreen(),
    );
  }
}
