// ignore_for_file: use_key_in_widget_constructors
import 'package:app_qr/pages/home_pages.dart';
import 'package:app_qr/pages/mapas_pages.dart';
import 'package:app_qr/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => UiProvider() ),
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home' : ( _ ) => HomePage(),
          'mapa' : ( _ ) => MapasPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          appBarTheme:  const AppBarTheme(
            color: Colors.deepPurple
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple,
          ),
          bottomNavigationBarTheme:const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.deepPurple,
            selectedIconTheme: IconThemeData(
              color: Colors.deepPurple,
            ),
            selectedLabelStyle: TextStyle(
              color: Colors.deepPurple
            ),
            selectedItemColor: Colors.deepPurple
          )
        ),
      ),
    );
  }
}