import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:test_project/screens/user_screen.dart';

import 'provider/theme_provider.dart';

void main() {
  // List lst1 = [1,2,3, 0,0,0];
  // List lst2 = [2,5,6];
  // List lst3 = [...lst1, ...lst2];
  

  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            title: "Hammad Ahmed",
            debugShowCheckedModeBanner: false,
            // themeMode: ref.watch(themeProvider).themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: UserScreen(),
          );
    
  
  }
}




